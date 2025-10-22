# Output the public IP of the EC2 instance
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_instance.public_ip
}

# Output the instance ID
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_instance.id
}

# Output the instance name
output "instance_name" {
  description = "Name of the EC2 instance"
  value       = var.instance_name
}

output "subnet_id" {
  description = "The ID of the subnet in the default VPC"
  value       = aws_subnet.default_subnet.id
}

output "vpc_id" {
  description = "The ID of the default VPC"
  value       = data.aws_vpc.default.id
}
