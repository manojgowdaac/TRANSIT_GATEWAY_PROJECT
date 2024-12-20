output "vpc_1_instance_id" {
  description = "EC2 instance ID for VPC-1"
  value       = module.vpc_1.instance_id
}

output "vpc_2_instance_id" {
  description = "EC2 instance ID for VPC-2"
  value       = module.vpc_2.instance_id
}
