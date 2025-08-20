# VPC Information
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.main.cidr_block
}

# Subnet Information
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "public_subnet_cidr_block" {
  description = "CIDR block of the public subnet"
  value       = aws_subnet.public.cidr_block
}

output "availability_zone" {
  description = "Availability zone of the public subnet"
  value       = aws_subnet.public.availability_zone
}

# EC2 Instance Information
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.web_server.public_dns
}

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.web_server.private_ip
}

# Security Group Information
output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.ec2.id
}

output "security_group_name" {
  description = "Name of the security group"
  value       = aws_security_group.ec2.name
}

# Connection Information
output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = var.key_pair_name != "" ? "ssh -i ~/.ssh/${var.key_pair_name}.pem ec2-user@${aws_instance.web_server.public_ip}" : "No key pair configured"
}

output "web_url" {
  description = "URL to access the web server"
  value       = "http://${aws_instance.web_server.public_ip}"
}

# Summary
output "deployment_summary" {
  description = "Summary of the deployment"
  value = {
    project_name    = var.project_name
    environment     = var.environment
    region          = var.aws_region
    vpc_id          = aws_vpc.main.id
    subnet_id       = aws_subnet.public.id
    instance_id     = aws_instance.web_server.id
    instance_type   = aws_instance.web_server.instance_type
    public_ip       = aws_instance.web_server.public_ip
    web_url         = "http://${aws_instance.web_server.public_ip}"
  }
} 