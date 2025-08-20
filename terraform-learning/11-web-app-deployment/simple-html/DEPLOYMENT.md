# 🚀 Deployment Guide - Simple HTML Website

Complete guide to deploy your HTML website to AWS using Terraform.

## ⚡ Prerequisites

Before you start, ensure you have:

- ✅ **Terraform installed** (version 1.0+)
- ✅ **AWS CLI configured** with appropriate permissions
- ✅ **AWS account** with free tier access
- ✅ **Basic understanding** of Terraform concepts

## 🎯 What You'll Deploy

This configuration will create:
- **S3 Bucket**: Hosts your website files
- **CloudFront Distribution**: Global content delivery network
- **Security Policies**: Proper access controls
- **Cost Optimization**: Lifecycle rules and caching

## 📁 Project Structure

```
simple-html/
├── README.md              # Project documentation
├── main.tf               # Main Terraform configuration
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── terraform.tfvars      # Configuration values
├── website/              # Your website files
│   ├── index.html        # Main page
│   ├── styles.css        # CSS styles
│   └── script.js         # JavaScript
└── DEPLOYMENT.md         # This file
```

## 🚀 Step-by-Step Deployment

### Step 1: Navigate to the Project Directory
```bash
cd terraform-learning/11-web-app-deployment/simple-html
```

### Step 2: Review Configuration
```bash
# Check your configuration
cat terraform.tfvars

# Verify website files exist
ls -la website/
```

### Step 3: Initialize Terraform
```bash
terraform init
```

This will:
- Download required providers (AWS, Random)
- Set up your working directory

### Step 4: Plan Your Deployment
```bash
terraform plan
```

Review the plan carefully to ensure:
- S3 bucket will be created
- CloudFront distribution will be configured
- Website files will be uploaded
- All resources are properly tagged

### Step 5: Deploy Your Website
```bash
terraform apply
```

Type `yes` when prompted to confirm the deployment.

**Deployment time**: 5-10 minutes (CloudFront takes time to deploy globally)

### Step 6: Verify Deployment
```bash
# Get deployment outputs
terraform output

# Test your website
curl -I $(terraform output -raw primary_website_url)
```

## 🌐 Accessing Your Website

After successful deployment, you'll have multiple URLs:

1. **CloudFront URL** (Recommended): `https://[distribution-id].cloudfront.net`
2. **S3 Website Endpoint**: `http://[bucket-name].s3-website-[region].amazonaws.com`
3. **S3 Bucket URL**: `https://[bucket-name].s3.[region].amazonaws.com`

## 🔧 Customizing Your Website

### Modify Website Content
1. Edit files in the `website/` folder
2. Make your changes to HTML, CSS, or JavaScript
3. Re-deploy with `terraform apply`

### Update Configuration
1. Modify `terraform.tfvars`
2. Run `terraform plan` to see changes
3. Apply with `terraform apply`

### Add New Files
1. Add files to the `website/` folder
2. Terraform will automatically detect and upload them
3. Run `terraform apply` to upload new files

## 💰 Cost Optimization Features

### Free Tier Friendly
- **S3**: 5GB storage per month
- **CloudFront**: 1TB data transfer per month
- **Price Class**: North America and Europe only

### Cost-Saving Features
- **Versioning**: Disabled to save storage costs
- **Lifecycle Rules**: Automatically transition to cheaper storage
- **Caching**: Optimized cache behavior for static assets
- **Compression**: Enabled for faster loading

## 🔒 Security Features

### Access Control
- **Origin Access Identity**: S3 access restricted to CloudFront only
- **Public Access**: Disabled for S3 bucket (accessed only via CloudFront)
- **HTTPS**: Enforced with TLS 1.2 minimum

### Best Practices
- **Principle of Least Privilege**: Minimal required permissions
- **Secure Headers**: CloudFront security headers
- **Error Handling**: Custom error pages for security

## 📊 Monitoring and Testing

### Test Your Website
```bash
# Test CloudFront
curl -I $(terraform output -raw primary_website_url)

# Test S3 endpoint
curl -I $(terraform output -raw website_endpoint)

# Check uploaded files
aws s3 ls s3://$(terraform output -raw s3_bucket_name)/ --recursive
```

### Performance Testing
```bash
# Test loading speed
curl -w "@curl-format.txt" -o /dev/null -s $(terraform output -raw primary_website_url)

# Check CloudFront cache
aws cloudfront get-distribution --id $(terraform output -raw cloudfront_distribution_id)
```

## 🆘 Troubleshooting

### Common Issues

#### 1. CloudFront Not Updating
```bash
# Invalidate CloudFront cache
aws cloudfront create-invalidation \
  --distribution-id $(terraform output -raw cloudfront_distribution_id) \
  --paths "/*"
```

#### 2. S3 Bucket Policy Errors
```bash
# Check bucket policy
aws s3api get-bucket-policy --bucket $(terraform output -raw s3_bucket_name)

# Verify bucket ownership
aws s3api get-bucket-ownership-controls --bucket $(terraform output -raw s3_bucket_name)
```

#### 3. Website Not Loading
```bash
# Check S3 website configuration
aws s3api get-bucket-website --bucket $(terraform output -raw s3_bucket_name)

# Verify CloudFront distribution status
aws cloudfront get-distribution --id $(terraform output -raw cloudfront_distribution_id)
```

### Debugging Steps
1. **Check Terraform Outputs**: Verify all resources were created
2. **Review AWS Console**: Check S3 and CloudFront services
3. **Test Endpoints**: Use curl to test different URLs
4. **Check Logs**: Review CloudWatch logs if enabled

## 🧹 Clean Up

### When You're Done Learning
```bash
terraform destroy
```

**Important**: This will delete all resources and stop billing.

### What Gets Destroyed
- S3 bucket and all website files
- CloudFront distribution
- All associated policies and configurations
- Origin Access Identity

## 🎉 Next Steps

After successfully deploying your website:

1. **Customize Content**: Modify HTML, CSS, and JavaScript
2. **Add Features**: Implement contact forms, analytics, etc.
3. **Custom Domain**: Add Route53 and SSL certificate
4. **CI/CD Pipeline**: Set up automated deployments
5. **Monitoring**: Add CloudWatch alarms and logging

## 💡 Pro Tips

1. **Use CloudFront URL**: Better performance and HTTPS
2. **Cache Invalidation**: Clear cache after content updates
3. **Monitor Usage**: Stay within free tier limits
4. **Backup Content**: Keep local copies of your website files
5. **Test Locally**: Preview changes before deploying

## 🆘 Getting Help

- **Terraform Documentation**: https://www.terraform.io/docs
- **AWS S3 Documentation**: https://docs.aws.amazon.com/s3/
- **AWS CloudFront Documentation**: https://docs.aws.amazon.com/cloudfront/
- **Community Forums**: Stack Overflow, HashiCorp Discuss

## 🎯 Success Checklist

- [ ] Website files created and organized
- [ ] Terraform configuration reviewed
- [ ] Resources deployed successfully
- [ ] Website accessible via CloudFront
- [ ] Performance tested
- [ ] Security verified
- [ ] Cost optimization enabled
- [ ] Cleanup plan ready

Happy deploying! 🌟

**Remember**: Always destroy resources when done learning to avoid charges! 🧹 