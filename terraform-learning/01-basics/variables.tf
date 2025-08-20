# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# Project name
variable "project_name" {
  description = "Name of the project (used for resource naming)"
  type        = string
  default     = "terraform-learning"
}

# Environment
variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
  
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
  
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "Must be a valid CIDR block."
  }
}

# Public subnet CIDR block
variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
  
  validation {
    condition     = can(cidrhost(var.public_subnet_cidr, 0))
    error_message = "Must be a valid CIDR block."
  }
}

# Availability zone
variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-west-2a"
}

# EC2 instance type (Free tier eligible: t2.micro)
variable "instance_type" {
  description = "EC2 instance type (use t2.micro for free tier)"
  type        = string
  default     = "t2.micro"
  
  validation {
    condition     = can(regex("^t2\\.micro$", var.instance_type)) || can(regex("^t3\\.micro$", var.instance_type))
    error_message = "For free tier, use t2.micro or t3.micro only."
  }
}

# Key pair name
variable "key_pair_name" {
  description = "Name of the AWS key pair for SSH access"
  type        = string
  default     = ""
  
  validation {
    condition     = var.key_pair_name != "" || var.key_pair_name == ""
    error_message = "Key pair name is optional but recommended for SSH access."
  }
}

# Allowed SSH CIDR blocks (restrict to your IP for security)
variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed to SSH to the EC2 instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # WARNING: Change this to your IP for production
  
  validation {
    condition     = length(var.allowed_ssh_cidr) > 0
    error_message = "At least one SSH CIDR block must be specified."
  }
}

# Tags
variable "tags" {
  description = "Additional tags for all resources"
  type        = map(string)
  default = {
    Owner       = "Terraform Learner"
    Purpose     = "Learning"
    CostCenter  = "Training"
    FreeTier    = "Yes"
  }
} 