# 🚀 Quick Start Guide

Get up and running with Terraform in 5 minutes!

## ⚡ Prerequisites Check

Before you start, make sure you have:

```bash
# Check Terraform version
terraform version

# Check AWS CLI configuration
aws configure list
```

## 🎯 Step-by-Step Deployment

### 1. Navigate to the basics folder
```bash
cd terraform-learning/01-basics
```

### 2. Initialize Terraform
```bash
terraform init
```
This downloads the AWS provider and sets up your working directory.

### 3. Review the plan
```bash
terraform plan
```
This shows you exactly what Terraform will create. Review it carefully!

### 4. Apply the configuration
```bash
terraform apply
```
Type `yes` when prompted to confirm the deployment.

### 5. Test your deployment
```bash
# Get the outputs
terraform output

# Access your web server
curl $(terraform output -raw web_url)
```

## 🔍 What You Just Created

- **VPC**: A virtual private cloud with CIDR 10.0.0.0/16
- **Public Subnet**: A subnet in us-west-2a with internet access
- **Internet Gateway**: Provides internet access to your VPC
- **Route Table**: Routes traffic from your subnet to the internet
- **Security Group**: Allows SSH (port 22) and HTTP (port 80) access
- **EC2 Instance**: A t2.micro instance running a web server

## 🌐 Access Your Resources

- **Web Server**: Use the `web_url` output
- **SSH Access**: Use the `ssh_command` output (if you configured a key pair)
- **AWS Console**: Check your resources in the AWS console

## 🧹 Clean Up

When you're done learning:

```bash
terraform destroy
```
Type `yes` to confirm and remove all created resources.

## 🎓 Learning Tips

1. **Experiment**: Try changing values in `terraform.tfvars` and reapply
2. **Explore**: Check the AWS console to see your resources
3. **Modify**: Add more resources to the `main.tf` file
4. **Understand**: Read the comments in the code to learn what each section does

## 🆘 Common Issues

- **Provider not found**: Run `terraform init`
- **Authentication error**: Check your AWS credentials with `aws configure list`
- **Region mismatch**: Update `aws_region` in `terraform.tfvars`
- **Permission denied**: Ensure your AWS user has EC2 and VPC permissions

## 🎉 Congratulations!

You've successfully deployed your first infrastructure with Terraform! 

Next steps:
- Try the exercises in the `exercises/` folder
- Move to the next module: **02-variables**
- Experiment with different resource types

Happy learning! 🌟 