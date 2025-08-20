# 01 - Terraform Basics 🚀

Welcome to your first Terraform lesson! In this module, you'll learn the fundamental concepts and write your first Terraform configuration.

## 🎯 What You'll Learn

- Terraform configuration file structure
- Provider configuration
- Resource definitions
- Basic commands: `init`, `plan`, `apply`, `destroy`
- Understanding the workflow

## 📁 Files in This Module

- `main.tf` - Main configuration file
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `terraform.tfvars` - Variable values
- `README.md` - This file

## 🚀 Getting Started

### Prerequisites
- Terraform installed (check with `terraform version`)
- AWS CLI configured (or another cloud provider)

### Step 1: Initialize
```bash
terraform init
```

### Step 2: Plan Your Changes
```bash
terraform plan
```

### Step 3: Apply Your Configuration
```bash
terraform apply
```

### Step 4: Clean Up (When Done)
```bash
terraform destroy
```

## 🔍 Key Concepts

### 1. **Configuration Files**
- `.tf` files contain Terraform configurations
- `main.tf` is the primary configuration file
- `variables.tf` defines input variables
- `outputs.tf` defines output values

### 2. **Providers**
- Providers are plugins that interact with cloud platforms
- Examples: AWS, Azure, Google Cloud, Docker, etc.
- Each provider has its own resources and data sources

### 3. **Resources**
- Resources are infrastructure objects you want to create
- Examples: EC2 instances, S3 buckets, VPCs, etc.
- Each resource has a type, name, and configuration

### 4. **State**
- Terraform keeps track of your infrastructure in state files
- State files map real-world resources to your configuration
- Never edit state files manually!

## 📝 Example: Simple EC2 Instance

The `main.tf` file in this folder creates a simple EC2 instance. Study it to understand:
- How to configure the AWS provider
- How to define an EC2 instance resource
- How to reference variables and outputs

## ⚠️ Important Notes

- **Never commit sensitive information** like access keys
- **Always run `terraform plan`** before `terraform apply`
- **Use variables** for configurable values
- **Keep state files secure** and consider remote state storage

## 🎉 Next Steps

After completing this module:
1. Try modifying the configuration
2. Add more resources
3. Experiment with different resource types
4. Move to the next module: **02-variables**

## 🆘 Troubleshooting

- **Provider not found**: Run `terraform init`
- **Authentication errors**: Check your AWS credentials
- **Resource already exists**: Use `terraform import` or `terraform destroy` first

Happy learning! 🌟 