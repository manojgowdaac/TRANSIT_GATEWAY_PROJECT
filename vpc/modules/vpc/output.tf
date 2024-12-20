output "instance_id" {
  value = aws_instance.ec2.id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}
