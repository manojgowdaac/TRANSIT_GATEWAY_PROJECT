variable "aws_region"{
    description = "provide aws region"
    type = string
}

#---------------------------EC2-------------------------------
#EC2
variable "ami_id" {
  description = "AMI ID to be used for EC2 instances"
  default     = "ami-003f5a76758516d1e"
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name for EC2 instances"
  default     = "manoj"
}

variable "region_1" {
  description = "AWS region for VPC-1"
  default     = "ap-southeast-1"
}

variable "region_2" {
  description = "AWS region for VPC-2"
  default     = "ap-southeast-2"
}

#--------------------VPC-1------------------------
# VPC-1 variables
variable "vpc_name_1" {
  description = "VPC name for VPC-1"
  default     = "my_vpc-1"
}

variable "subnet_name_1" {
  description = "Subnet name for VPC-1"
  default     = "my-subnet-1"
}

variable "igw_name_1" {
  description = "Internet Gateway name for VPC-1"
  default     = "my-vpc-igw-1"
}

variable "rt_name_1" {
  description = "Route table name for VPC-1"
  default     = "my-vp-rt-1"
}

variable "cidr_block_1" {
  description = "CIDR block for VPC-1"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_1" {
  description = "CIDR block for subnet-1 in VPC-1"
  default     = "10.0.1.0/24"
}

variable "availability_zone_1" {
  description = "Availability zone for subnet-1 in VPC-1"
  default     = "ap-southeast-2a"
}

variable "sg_name_1" {
  description = "Security group name for VPC-1"
  default     = "my-vpc-sg-1"
}

variable "instance_name_1" {
  description = "EC2 instance name for VPC-1"
  default     = "my-ec2-1"
}

#----------------------------VPC-2----------------------------------------
# VPC-2 variables
variable "vpc_name_2" {
  description = "VPC name for VPC-2"
  default     = "my_vpc-2"
}

variable "subnet_name_2" {
  description = "Subnet name for VPC-2"
  default     = "my-subnet-2"
}

variable "igw_name_2" {
  description = "Internet Gateway name for VPC-2"
  default     = "my-vpc-igw-2"
}

variable "rt_name_2" {
  description = "Route table name for VPC-2"
  default     = "my-vp-rt-2"
}

variable "cidr_block_2" {
  description = "CIDR block for VPC-2"
  default     = "11.0.0.0/16"
}

variable "subnet_cidr_2" {
  description = "CIDR block for subnet-2 in VPC-2"
  default     = "11.0.1.0/24"
}

variable "availability_zone_2" {
  description = "Availability zone for subnet-2 in VPC-2"
  default     = "ap-southeast-2b"
}

variable "sg_name_2" {
  description = "Security group name for VPC-2"
  default     = "my-vpc-sg-2"
}

variable "instance_name_2" {
  description = "EC2 instance name for VPC-2"
  default     = "my-ec2-2"
}

#---------------------------VPC-3----------------------------
#VPC-3 [SAME AS ABOVE]

