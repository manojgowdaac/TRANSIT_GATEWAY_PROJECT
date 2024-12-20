variable "aws_region"{
    description = "this is aws region"
    type = string
}

# Variables for VPC Configuration
variable "vpc_config" {
  type = map(object({
    vpc_id         = string
    subnet_ids     = list(string)
    route_table_id = string
  }))
}

# Variables for VPC CIDR Blocks
variable "vpc_cidrs" {
  type = map(string)
}