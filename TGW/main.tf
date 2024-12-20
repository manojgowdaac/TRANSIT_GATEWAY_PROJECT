# Step 1: Create Transit Gateway
resource "aws_ec2_transit_gateway" "tgw" {
  description = "Transit Gateway for inter-VPC communication"
  tags = {
    Name = "Transit-Gateway"
  }
}

# Step 2: Create Transit Gateway Attachments
resource "aws_ec2_transit_gateway_vpc_attachment" "attachments" {
  for_each = var.vpc_config

  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = each.value.vpc_id
  subnet_ids         = each.value.subnet_ids

  tags = {
    Name = "TGW-${each.key}-Attachment"
  }
}

# Step 3: Define Routes for Inter-VPC Communication
locals {
  vpc_routes = flatten([
    for k, v in var.vpc_config : [
      for cidr_key, cidr in var.vpc_cidrs :
      {
        route_table_id         = v.route_table_id
        destination_cidr_block = cidr
        transit_gateway_id     = aws_ec2_transit_gateway.tgw.id
      } if cidr_key != k
    ]
  ])
}

resource "aws_route" "routes" {
  for_each = { for i, route in local.vpc_routes : i => route }

  route_table_id         = each.value.route_table_id
  destination_cidr_block = each.value.destination_cidr_block
  transit_gateway_id     = each.value.transit_gateway_id
}


