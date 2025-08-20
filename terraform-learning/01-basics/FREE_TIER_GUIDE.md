# 🆓 AWS Free Tier Guide for Terraform Learning

This guide helps you stay within AWS free tier limits while learning Terraform.

## 🎯 Free Tier Limits

### EC2 Instances
- **t2.micro or t3.micro**: 750 hours per month
- **Storage**: 8GB EBS gp2 storage included
- **Data Transfer**: 15GB outbound per month

### S3 Storage
- **Storage**: 5GB per month
- **Requests**: 20,000 GET requests, 2,000 PUT requests
- **Data Transfer**: 15GB outbound per month

### VPC & Networking
- **VPC**: Free (no additional charges)
- **Subnets**: Free
- **Internet Gateway**: Free
- **Route Tables**: Free
- **Security Groups**: Free

## ⚠️ Important Cost Warnings

### What Can Cost Money
1. **EC2 instances running beyond 750 hours/month**
2. **EBS volumes larger than 8GB**
3. **Data transfer beyond 15GB/month**
4. **S3 storage beyond 5GB**
5. **S3 requests beyond free tier limits**

### Cost-Saving Tips
1. **Always destroy resources** when done learning
2. **Use t2.micro or t3.micro** instances only
3. **Keep EBS volumes at 8GB** or smaller
4. **Monitor your usage** in AWS Billing Dashboard
5. **Set up billing alerts** to avoid surprises

## 🚨 Critical: Always Clean Up!

```bash
# When you're done learning, ALWAYS run:
terraform destroy

# This removes ALL resources and stops billing
```

## 📊 Free Tier Usage Tracking

### Check Your Usage
1. Go to [AWS Billing Dashboard](https://console.aws.amazon.com/billing/)
2. Click "Bills" to see monthly charges
3. Click "Cost Explorer" to track spending
4. Set up billing alerts at $1, $5, and $10

### Set Up Billing Alerts
1. In AWS Billing Dashboard, go to "Preferences"
2. Enable "Receive Billing Reports"
3. Set up CloudWatch alarms for spending thresholds
4. Monitor your usage daily during learning

## 🔒 Security Best Practices for Free Tier

### SSH Access Control
```hcl
# In terraform.tfvars, restrict SSH to your IP:
allowed_ssh_cidr = ["YOUR_IP_ADDRESS/32"]

# Find your IP: https://whatismyipaddress.com/
# Example: ["203.0.113.1/32"]
```

### Key Pair Management
1. **Create a key pair** in AWS Console
2. **Download the .pem file** securely
3. **Set proper permissions**: `chmod 400 your-key.pem`
4. **Never commit keys** to version control

## 📱 Free Tier Monitoring Tools

### AWS Cost Explorer
- Track spending by service
- View usage trends
- Set up cost alerts

### AWS Budgets
- Create spending budgets
- Get notified when approaching limits
- Free tier eligible

### CloudWatch Alarms
- Monitor resource usage
- Set up billing alarms
- Free tier includes basic monitoring

## 🎓 Learning Schedule Recommendations

### Week 1: Basic Infrastructure
- Deploy VPC, subnet, EC2 instance
- Practice with `terraform plan` and `apply`
- **Destroy after 2-3 hours of practice**

### Week 2: Variables and Outputs
- Modify configurations
- Add new resources
- **Destroy after each session**

### Week 3: Modules and State
- Work with modules
- Practice state management
- **Destroy after each session**

### Week 4: Advanced Topics
- Multi-environment deployments
- Remote state configuration
- **Destroy after each session**

## 🆘 What to Do If You Exceed Free Tier

### Immediate Actions
1. **Stop all EC2 instances** immediately
2. **Delete unused EBS volumes**
3. **Empty and delete S3 buckets**
4. **Run `terraform destroy`**

### Cost Control
1. **Set up strict spending limits**
2. **Use AWS Organizations** for learning accounts
3. **Consider AWS Educate** for students
4. **Use local alternatives** like Docker for some learning

## 📚 Free Tier Alternatives

### Local Development
- **Docker**: Run containers locally
- **Vagrant**: Local virtual machines
- **Minikube**: Local Kubernetes

### Cloud Alternatives
- **Google Cloud**: $300 free credit
- **Azure**: $200 free credit
- **Oracle Cloud**: Always free tier

## 🎉 Success Checklist

- [ ] Set up billing alerts
- [ ] Use only t2.micro/t3.micro instances
- [ ] Keep EBS volumes at 8GB or less
- [ ] Always run `terraform destroy` when done
- [ ] Monitor usage in AWS Billing Dashboard
- [ ] Set up cost alerts
- [ ] Practice security best practices

## 💡 Pro Tips

1. **Time your learning sessions** to stay under 750 hours/month
2. **Use AWS CLI** to quickly check resource status
3. **Tag everything** for easy identification
4. **Keep configurations simple** during learning
5. **Document your experiments** before destroying

## 🆘 Emergency Contact

If you accidentally exceed free tier:
1. **AWS Support**: Basic support is free
2. **AWS Community**: Ask for help on forums
3. **Documentation**: Check AWS cost optimization guides

Remember: **Always destroy resources when done learning!** 🚀 