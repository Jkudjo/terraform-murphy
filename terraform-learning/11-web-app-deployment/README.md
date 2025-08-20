# 11 - Web App Deployment with Terraform 🌐

Welcome to the Web App Deployment module! Here you'll learn how to deploy various types of web applications using Terraform, from simple static sites to full-stack applications.

## 🎯 What You'll Learn

- Deploy different types of web applications
- Use various deployment strategies
- Configure load balancers and auto-scaling
- Implement CI/CD pipelines with Terraform
- Monitor and maintain deployed applications

## 📁 Available Web App Examples

### 1. **simple-html** - Basic HTML/CSS/JS App
- Simple static website deployment
- S3 + CloudFront for global distribution
- Perfect for portfolios, landing pages
- **Free tier friendly**

### 2. **nodejs-app** - Node.js Application
- Express.js web application
- EC2 deployment with auto-scaling
- Load balancer configuration
- **Free tier friendly** (t2.micro)

### 3. **python-flask** - Python Flask App
- Flask web application
- Container deployment with ECS
- Application Load Balancer
- **Free tier friendly** (Fargate)

### 4. **static-site** - Advanced Static Site
- JAMstack application deployment
- S3 + CloudFront + Route53
- CI/CD pipeline integration
- **Free tier friendly**

## 🚀 Getting Started

### Prerequisites
- Completed modules 01-10 (basics through best practices)
- AWS account with free tier access
- Basic understanding of web development
- Docker knowledge (for container deployments)

### Choose Your Path
1. **Beginner**: Start with `simple-html`
2. **Intermediate**: Try `nodejs-app` or `python-flask`
3. **Advanced**: Master `static-site` with CI/CD

## 🔧 Deployment Strategies

### Static Site Deployment
- **S3 Bucket**: Store static files
- **CloudFront**: Global content delivery
- **Route53**: Domain management
- **ACM**: SSL certificate management

### Application Deployment
- **EC2**: Traditional server deployment
- **ECS Fargate**: Container-based deployment
- **Application Load Balancer**: Traffic distribution
- **Auto Scaling**: Handle traffic spikes

### CI/CD Integration
- **GitHub Actions**: Automated deployments
- **CodePipeline**: AWS-native CI/CD
- **Terraform Cloud**: Remote state management

## 💰 Cost Considerations

### Free Tier Friendly
- **S3**: 5GB storage + limited requests
- **CloudFront**: 1TB data transfer
- **EC2**: 750 hours/month (t2.micro)
- **ECS Fargate**: 720 hours/month
- **ALB**: Free tier eligible

### Cost Optimization
- Use appropriate instance types
- Implement auto-scaling
- Monitor resource usage
- Clean up unused resources

## 🎓 Learning Objectives

By the end of this module, you'll be able to:
- Deploy static websites to AWS
- Containerize and deploy web applications
- Configure load balancers and auto-scaling
- Set up CI/CD pipelines
- Monitor application performance
- Handle production deployments

## 🛠️ Tools & Technologies

### AWS Services
- **S3**: Object storage
- **CloudFront**: CDN
- **EC2**: Virtual servers
- **ECS**: Container orchestration
- **ALB**: Load balancing
- **Route53**: DNS management

### Development Tools
- **Docker**: Containerization
- **GitHub Actions**: CI/CD
- **Terraform Cloud**: Remote state
- **AWS CLI**: Command line tools

## 📚 Additional Resources

- [AWS Web Application Hosting](https://aws.amazon.com/web-hosting/)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Docker Documentation](https://docs.docker.com/)
- [GitHub Actions](https://docs.github.com/en/actions)

## 🎉 Ready to Deploy?

Pick a web app example and start building! Each example includes:
- Complete Terraform configuration
- Application source code
- Deployment instructions
- Testing and monitoring setup

Happy deploying! 🚀 