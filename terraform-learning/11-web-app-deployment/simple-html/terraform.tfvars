# Configuration values for the Simple HTML Website Deployment
# Modify these values according to your needs

# AWS Region (CloudFront requires us-east-1 for global distribution)
aws_region = "us-east-1"

# Project name (will be used for resource naming)
project_name = "terraform-learning-website"

# Environment
environment = "dev"

# Website configuration
website_config = {
  index_document      = "index.html"
  error_document      = "index.html"
  default_root_object = "index.html"
}

# CloudFront configuration
cloudfront_config = {
  price_class         = "PriceClass_100"  # North America and Europe only (cost savings)
  enabled             = true
  is_ipv6_enabled    = true
  minimum_protocol_version = "TLSv1.2_2021"
}

# Cache behavior configuration
cache_behavior_config = {
  css_ttl   = 86400    # 24 hours
  js_ttl    = 86400    # 24 hours
  image_ttl = 86400    # 24 hours
  html_ttl  = 3600     # 1 hour
}

# S3 bucket configuration
s3_config = {
  versioning_enabled = false  # Disabled for cost savings
  lifecycle_enabled  = true   # Enabled for cost optimization
  public_access_enabled = true
}

# Geographic restrictions (optional - set to true to restrict access)
geo_restrictions = {
  enabled = false
  restriction_type = "none"
  locations = []
}

# Custom domain configuration (optional - set to true to use custom domain)
custom_domain = {
  enabled = false
  domain_name = ""
  certificate_arn = ""
}

# Monitoring and logging configuration
monitoring_config = {
  enable_access_logs = false      # Disabled for cost savings
  enable_cloudwatch_logs = false # Disabled for cost savings
  log_retention_days = 7
}

# Additional tags
tags = {
  Owner       = "Terraform Learner"
  Purpose     = "Learning Website"
  CostCenter  = "Training"
  FreeTier    = "Yes"
  Project     = "Web App Deployment"
  Date        = "2024"
} 