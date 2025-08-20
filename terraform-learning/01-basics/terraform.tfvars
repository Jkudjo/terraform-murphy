# Example values for the Terraform configuration
# Copy this file to terraform.tfvars and modify as needed

# AWS Region (change this to your preferred region)
aws_region = "us-west-2"

# Project name (will be used for resource naming)
project_name = "terraform-learning"

# Environment (dev, staging, prod)
environment = "dev"

# VPC CIDR block
vpc_cidr = "10.0.0.0/16"

# Public subnet CIDR block
public_subnet_cidr = "10.0.1.0/24"

# Availability zone (should match your region)
availability_zone = "us-west-2a"

# EC2 instance type (t2.micro is free tier eligible - 750 hours/month)
instance_type = "t2.micro"

# Key pair name (optional - for SSH access)
# key_pair_name = "your-key-pair-name"

# SSH access control (IMPORTANT: Change this to your IP address for security!)
# Current setting allows access from anywhere (0.0.0.0/0)
# For production, restrict to your specific IP: ["YOUR_IP/32"]
allowed_ssh_cidr = ["0.0.0.0/0"]

# Additional tags
tags = {
  Owner      = "Terraform Learner"
  Purpose    = "Learning"
  CostCenter = "Training"
  Date       = "2024"
  FreeTier   = "Yes"
} 