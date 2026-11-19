# Public IP of EC2 instance
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

# VPC ID
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

# Subnet ID
output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.main.id
}
