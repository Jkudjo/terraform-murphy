# S3 Bucket Information
output "s3_bucket_name" {
  description = "Name of the S3 bucket hosting the website"
  value       = aws_s3_bucket.website_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.website_bucket.arn
}

output "s3_bucket_region" {
  description = "Region of the S3 bucket"
  value       = aws_s3_bucket.website_bucket.region
}

# S3 Website Endpoint
output "website_endpoint" {
  description = "S3 website endpoint URL"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}

# CloudFront Information
output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website_distribution.id
}

output "cloudfront_domain_name" {
  description = "Domain name of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website_distribution.domain_name
}

output "cloudfront_arn" {
  description = "ARN of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website_distribution.arn
}

# Website URLs
output "website_urls" {
  description = "All available URLs to access the website"
  value = {
    s3_endpoint     = "http://${aws_s3_bucket_website_configuration.website_config.website_endpoint}"
    cloudfront_url  = "https://${aws_cloudfront_distribution.website_distribution.domain_name}"
    s3_bucket_url   = "https://${aws_s3_bucket.website_bucket.bucket}.s3.${aws_s3_bucket.website_bucket.region}.amazonaws.com"
  }
}

# Primary Website URL (recommended)
output "primary_website_url" {
  description = "Primary URL to access the website (CloudFront recommended)"
  value       = "https://${aws_cloudfront_distribution.website_distribution.domain_name}"
}

# CloudFront Origin Access Identity
output "cloudfront_oai_id" {
  description = "CloudFront Origin Access Identity ID"
  value       = aws_cloudfront_origin_access_identity.website_oai.id
}

output "cloudfront_oai_arn" {
  description = "CloudFront Origin Access Identity ARN"
  value       = aws_cloudfront_origin_access_identity.website_oai.iam_arn
}

# Deployment Information
output "deployment_summary" {
  description = "Summary of the website deployment"
  value = {
    project_name        = var.project_name
    environment         = var.environment
    region              = var.aws_region
    s3_bucket          = aws_s3_bucket.website_bucket.bucket
    cloudfront_domain  = aws_cloudfront_distribution.website_distribution.domain_name
    website_endpoint   = aws_s3_bucket_website_configuration.website_config.website_endpoint
    deployment_time    = timestamp()
  }
}

# Cost Information
output "cost_optimization_info" {
  description = "Information about cost optimization features"
  value = {
    price_class        = var.cloudfront_config.price_class
    versioning_enabled = var.s3_config.versioning_enabled
    lifecycle_enabled  = var.s3_config.lifecycle_enabled
    access_logs        = var.monitoring_config.enable_access_logs
    cloudwatch_logs    = var.monitoring_config.enable_cloudwatch_logs
    estimated_monthly_cost = "Free tier eligible (S3: 5GB, CloudFront: 1TB transfer)"
  }
}

# Security Information
output "security_info" {
  description = "Security configuration information"
  value = {
    public_access_enabled = var.s3_config.public_access_enabled
    https_enabled        = true
    minimum_tls_version  = var.cloudfront_config.minimum_protocol_version
    origin_access_identity = "Enabled (S3 access restricted to CloudFront)"
  }
}

# Cache Information
output "cache_configuration" {
  description = "Cache behavior configuration"
  value = {
    html_cache_ttl = var.cache_behavior_config.html_ttl
    css_cache_ttl  = var.cache_behavior_config.css_ttl
    js_cache_ttl   = var.cache_behavior_config.js_ttl
    image_cache_ttl = var.cache_behavior_config.image_ttl
    compression_enabled = true
  }
}

# File Upload Information
output "uploaded_files" {
  description = "List of files uploaded to S3"
  value       = keys(aws_s3_object.website_files)
}

# Next Steps
output "next_steps" {
  description = "Recommended next steps after deployment"
  value = [
    "1. Test your website using the CloudFront URL",
    "2. Customize the website content in the website/ folder",
    "3. Re-deploy with 'terraform apply' after making changes",
    "4. Consider adding a custom domain with Route53",
    "5. Set up monitoring and alerts",
    "6. Remember to run 'terraform destroy' when done learning"
  ]
}

# Testing Commands
output "testing_commands" {
  description = "Commands to test your website deployment"
  value = {
    test_cloudfront = "curl -I https://${aws_cloudfront_distribution.website_distribution.domain_name}"
    test_s3_endpoint = "curl -I http://${aws_s3_bucket_website_configuration.website_config.website_endpoint}"
    check_files = "aws s3 ls s3://${aws_s3_bucket.website_bucket.bucket}/ --recursive"
    invalidate_cache = "aws cloudfront create-invalidation --distribution-id ${aws_cloudfront_distribution.website_distribution.id} --paths '/*'"
  }
} 