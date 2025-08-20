# Terraform Learning Journey 🚀

Welcome to your Terraform learning path! This folder structure is designed to take you from complete beginner to confident Terraform practitioner.

## 🆓 AWS Free Tier Optimized

**This learning path is specifically designed for AWS free tier users:**
- Uses only free tier eligible resources (t2.micro instances, 8GB EBS, 5GB S3)
- Includes cost monitoring and billing alerts setup
- Emphasizes proper cleanup to avoid charges
- Provides alternatives if you exceed free tier limits

## 📚 Learning Path

### 1. **01-basics** - Terraform Fundamentals
- Basic syntax and configuration
- Resource definitions
- Provider configuration
- First infrastructure deployment
- **Free tier: t2.micro EC2, 8GB EBS, 5GB S3**

### 2. **02-variables** - Working with Variables
- Input variables
- Variable types and validation
- Local values
- Variable precedence

### 3. **03-modules** - Reusable Infrastructure
- Module structure
- Module inputs and outputs
- Module versioning
- Best practices

### 4. **04-state** - State Management
- Understanding Terraform state
- Remote state storage
- State locking
- State file security

### 5. **05-providers** - Infrastructure Providers
- AWS, Azure, GCP providers
- Provider configuration
- Provider-specific resources
- Authentication methods

### 6. **06-outputs** - Output Values
- Output definitions
- Output formatting
- Using outputs in other modules
- Sensitive outputs

### 7. **07-data-sources** - Data Lookup
- Data source concepts
- Common data sources
- Data source dependencies
- Cross-module data sharing

### 8. **08-functions** - Built-in Functions
- String functions
- Numeric functions
- Collection functions
- Type conversion functions

### 9. **09-workspaces** - Environment Management
- Workspace concepts
- Environment separation
- Workspace switching
- Multi-environment deployments

### 10. **10-best-practices** - Production Ready
- Code organization
- Security best practices
- Performance optimization
- Team collaboration

## 🛠️ Prerequisites

- Terraform installed (version 1.0+)
- AWS account with free tier access
- AWS CLI configured
- Code editor (VS Code recommended)
- Basic understanding of cloud concepts

## 🚀 Getting Started

1. Start with `01-basics` folder
2. Follow the README in each section
3. Complete the exercises
4. Move to the next section when ready
5. **Always destroy resources when done learning**

## 📁 Folder Structure

```
terraform-learning/
├── 01-basics/          # Start here! (Free tier optimized)
├── 02-variables/       # Learn about variables
├── 03-modules/         # Reusable infrastructure
├── 04-state/           # State management
├── 05-providers/       # Cloud providers
├── 06-outputs/         # Output values
├── 07-data-sources/    # Data lookup
├── 08-functions/       # Built-in functions
├── 09-workspaces/      # Environment management
├── 10-best-practices/  # Production practices
├── examples/            # Complete examples
├── exercises/           # Practice exercises
└── docs/               # Additional documentation
```

## 🎯 Learning Goals

By the end of this journey, you'll be able to:
- Write Terraform configurations from scratch
- Manage infrastructure as code
- Use modules and best practices
- Deploy to multiple cloud providers
- Collaborate with teams on infrastructure
- Troubleshoot common issues
- **Stay within free tier limits**

## 💰 Cost Management

### Free Tier Limits
- **EC2**: 750 hours/month (t2.micro or t3.micro)
- **EBS**: 8GB storage
- **S3**: 5GB storage + limited requests
- **Data Transfer**: 15GB outbound/month

### Cost Control
- Set up AWS billing alerts
- Monitor usage daily
- Always destroy resources when done
- Use cost optimization best practices

## ⚠️ Important Warnings

- **Never leave resources running** - they cost money after free tier
- **Always run `terraform destroy`** when done learning
- **Monitor your AWS billing dashboard** regularly
- **Set up billing alerts** to avoid surprises
- **Use only free tier eligible resources** during learning

## 📖 Additional Resources

- [Terraform Official Documentation](https://www.terraform.io/docs)
- [Terraform Registry](https://registry.terraform.io/)
- [Terraform GitHub](https://github.com/hashicorp/terraform)
- [AWS Free Tier](https://aws.amazon.com/free/)
- [AWS Cost Optimization](https://aws.amazon.com/cost-optimization/)

## 🎉 Ready to Start?

1. **Read the FREE_TIER_GUIDE.md** in the basics folder
2. **Set up AWS billing alerts** before starting
3. **Follow the Quick Start Guide** step by step
4. **Practice safely** within free tier limits
5. **Always clean up** when done

Happy learning! 🌟

**Remember: Free tier is perfect for learning, but always destroy resources!** 🧹 