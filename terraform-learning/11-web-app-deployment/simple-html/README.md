# Simple HTML Web App Deployment 🌐

Deploy a basic HTML/CSS/JavaScript website to AWS using S3 and CloudFront. Perfect for portfolios, landing pages, and simple web applications.

## 🎯 What You'll Deploy

- **Static Website**: HTML, CSS, and JavaScript files
- **S3 Bucket**: Host your website files
- **CloudFront Distribution**: Global content delivery
- **SSL Certificate**: HTTPS support via ACM
- **Custom Domain**: Route53 DNS configuration (optional)

## 📁 Project Structure

```
simple-html/
├── README.md              # This file
├── main.tf               # Terraform configuration
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── terraform.tfvars      # Configuration values
├── website/              # Your website files
│   ├── index.html        # Main page
│   ├── styles.css        # CSS styles
│   ├── script.js         # JavaScript
│   └── images/           # Image assets
└── deployment.md         # Deployment guide
```

## 🚀 Quick Start

### 1. Navigate to the directory
```bash
cd terraform-learning/11-web-app-deployment/simple-html
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Deploy your website
```bash
terraform plan
terraform apply
```

### 4. Access your website
- **S3 URL**: Check the `website_endpoint` output
- **CloudFront URL**: Check the `cloudfront_url` output

### 5. Clean up (when done)
```bash
terraform destroy
```

## 🌐 Website Features

### HTML Structure
- Responsive design
- Modern CSS styling
- Interactive JavaScript
- Mobile-friendly layout

### CSS Features
- Flexbox and Grid layouts
- CSS animations
- Responsive breakpoints
- Modern color scheme

### JavaScript Features
- Interactive elements
- Form validation
- Dynamic content loading
- Smooth scrolling

## 💰 Free Tier Information

### S3 Storage
- **5GB storage** per month
- **20,000 GET requests** per month
- **2,000 PUT requests** per month

### CloudFront
- **1TB data transfer** per month
- **10,000 requests** per month
- **1,000,000 requests** per month (after free tier)

### Cost Optimization
- Use appropriate storage classes
- Implement caching strategies
- Monitor usage regularly
- Clean up unused resources

## 🔧 Customization

### Modify Website Content
1. Edit files in the `website/` folder
2. Update HTML, CSS, and JavaScript
3. Re-upload to S3 or redeploy with Terraform

### Change Configuration
1. Modify `terraform.tfvars`
2. Update domain names, regions, etc.
3. Run `terraform plan` and `terraform apply`

### Add Features
- Contact forms
- Analytics integration
- SEO optimization
- Performance monitoring

## 🎓 Learning Objectives

By completing this example, you'll understand:
- S3 bucket configuration for static websites
- CloudFront distribution setup
- SSL certificate management
- DNS configuration with Route53
- Terraform deployment workflows

## 🆘 Troubleshooting

### Common Issues
- **Bucket policy errors**: Check S3 bucket permissions
- **CloudFront not updating**: Clear CloudFront cache
- **SSL certificate issues**: Verify domain validation
- **DNS problems**: Check Route53 configuration

### Debugging Steps
1. Check Terraform outputs
2. Verify AWS console resources
3. Test website endpoints
4. Review CloudWatch logs

## 🎉 Next Steps

After mastering this example:
1. Try the **nodejs-app** example
2. Experiment with **python-flask** deployment
3. Master **static-site** with CI/CD
4. Build your own custom applications

## 💡 Pro Tips

1. **Use CloudFront caching** for better performance
2. **Implement proper S3 bucket policies** for security
3. **Set up monitoring** for your website
4. **Use versioning** for your website files
5. **Implement backup strategies** for your content

Happy deploying! 🌟 