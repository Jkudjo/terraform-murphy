# AWS Region
variable "aws_region" {
  description = "AWS region to deploy the website"
  type        = string
  default     = "us-east-1"  # CloudFront requires us-east-1 for global distribution
}

# Project name
variable "project_name" {
  description = "Name of the project (used for resource naming)"
  type        = string
  default     = "terraform-learning-website"
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

# Website configuration
variable "website_config" {
  description = "Website configuration settings"
  type = object({
    index_document = string
    error_document = string
    default_root_object = string
  })
  default = {
    index_document      = "index.html"
    error_document      = "index.html"
    default_root_object = "index.html"
  }
}

# CloudFront configuration
variable "cloudfront_config" {
  description = "CloudFront distribution configuration"
  type = object({
    price_class         = string
    enabled             = bool
    is_ipv6_enabled    = bool
    minimum_protocol_version = string
  })
  default = {
    price_class         = "PriceClass_100"  # North America and Europe only (cost savings)
    enabled             = true
    is_ipv6_enabled    = true
    minimum_protocol_version = "TLSv1.2_2021"
  }
}

# Cache behavior configuration
variable "cache_behavior_config" {
  description = "Cache behavior configuration for different file types"
  type = object({
    css_ttl = number
    js_ttl  = number
    image_ttl = number
    html_ttl = number
  })
  default = {
    css_ttl   = 86400    # 24 hours
    js_ttl    = 86400    # 24 hours
    image_ttl = 86400    # 24 hours
    html_ttl  = 3600     # 1 hour
  }
}

# S3 bucket configuration
variable "s3_config" {
  description = "S3 bucket configuration"
  type = object({
    versioning_enabled = bool
    lifecycle_enabled = bool
    public_access_enabled = bool
  })
  default = {
    versioning_enabled = false  # Disabled for cost savings
    lifecycle_enabled  = true   # Enabled for cost optimization
    public_access_enabled = true
  }
}

# Tags
variable "tags" {
  description = "Additional tags for all resources"
  type        = map(string)
  default = {
    Owner       = "Terraform Learner"
    Purpose     = "Learning Website"
    CostCenter  = "Training"
    FreeTier    = "Yes"
    Project     = "Web App Deployment"
  }
}

# Geographic restrictions (optional)
variable "geo_restrictions" {
  description = "Geographic restrictions for CloudFront distribution"
  type = object({
    enabled = bool
    restriction_type = string
    locations = list(string)
  })
  default = {
    enabled = false
    restriction_type = "none"
    locations = []
  }
}

# Custom domain configuration (optional)
variable "custom_domain" {
  description = "Custom domain configuration"
  type = object({
    enabled = bool
    domain_name = string
    certificate_arn = string
  })
  default = {
    enabled = false
    domain_name = ""
    certificate_arn = ""
  }
}

# Monitoring and logging
variable "monitoring_config" {
  description = "Monitoring and logging configuration"
  type = object({
    enable_access_logs = bool
    enable_cloudwatch_logs = bool
    log_retention_days = number
  })
  default = {
    enable_access_logs = false      # Disabled for cost savings
    enable_cloudwatch_logs = false # Disabled for cost savings
    log_retention_days = 7
  }
} 