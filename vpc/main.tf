# Provider
provider "aws" {
  region = var.aws_region
}

#I can use only one module insted of two module but 
#using two instances of the vpc module (one for each VPC), 
#Keeping your code modular and reusable.
#Ensuring each VPC has its own configuration, without mixing or duplicating the code
#for VPC-1
module "vpc_1" {
  source = "./modules/vpc"

  region           = var.region_1
  vpc_name         = var.vpc_name_1
  subnet_name      = var.subnet_name_1
  igw_name         = var.igw_name_1
  rt_name          = var.rt_name_1
  cidr_block       = var.cidr_block_1
  subnet_cidr      = var.subnet_cidr_1
  availability_zone = var.availability_zone_1
  instance_name    = var.instance_name_1
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  sg_name          = var.sg_name_1
  vpc_id = module.vpc_1.vpc_id
}
#SG
# # Create Security Group for VPC-1
# module "sg_1" {
#   source = "./modules/sg"
#   sg_name = var.sg_name_1
#   vpc_id  = module.vpc_1.vpc_id
# }
#for VPC-2
module "vpc_2" {
  source = "./modules/vpc"

  region           = var.region_2
  vpc_name         = var.vpc_name_2
  subnet_name      = var.subnet_name_2
  igw_name         = var.igw_name_2
  rt_name          = var.rt_name_2
  cidr_block       = var.cidr_block_2
  subnet_cidr      = var.subnet_cidr_2
  availability_zone = var.availability_zone_2
  instance_name    = var.instance_name_2
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  sg_name          = var.sg_name_2
  vpc_id = module.vpc_2.vpc_id
}

# # Create Security Group for VPC-2
# module "sg_2" {
#   source = "./modules/sg"
#   sg_name = var.sg_name_2
#   vpc_id  = module.vpc_2.vpc_id
  
# }
