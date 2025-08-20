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

# EC2 instance type (t2.micro is free tier eligible)
instance_type = "t2.micro"

# Key pair name (optional - for SSH access)
# key_pair_name = "your-key-pair-name"

# Additional tags
tags = {
  Owner      = "Terraform Learner"
  Purpose    = "Learning"
  CostCenter = "Training"
  Date       = "2024"
} 