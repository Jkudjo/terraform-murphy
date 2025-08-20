# Exercise 1: Your First Terraform Deployment 🎯

## 🎯 Objective
Deploy the basic infrastructure and then make modifications to understand how Terraform works.

## 📋 Prerequisites
- Completed the Quick Start Guide
- Have a working Terraform deployment

## 🚀 Exercise Steps

### Step 1: Initial Deployment
1. Navigate to the `01-basics` folder
2. Run `terraform init` (if not already done)
3. Run `terraform plan` and review what will be created
4. Run `terraform apply` and confirm with `yes`
5. Note down the outputs, especially the `web_url`

### Step 2: Verify Your Deployment
1. Access your web server using the `web_url` output
2. Check the AWS console to see your resources
3. Verify the VPC, subnet, and EC2 instance were created

### Step 3: Make Your First Change
1. Open `terraform.tfvars`
2. Change the `instance_type` from `t2.micro` to `t2.small`
3. Run `terraform plan` - notice what will change
4. Run `terraform apply` and confirm
5. Verify the instance type changed in AWS console

### Step 4: Add a New Resource
1. Open `main.tf`
2. Add a new S3 bucket after the EC2 instance:

```hcl
# Create an S3 bucket for storing files
resource "aws_s3_bucket" "learning_bucket" {
  bucket = "${var.project_name}-${random_string.bucket_suffix.result}"
  
  tags = {
    Name = "${var.project_name}-learning-bucket"
  }
}

# Generate a random string for unique bucket names
resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}
```

3. Add the random provider to the `required_providers` block in `main.tf`:

```hcl
required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }
  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }
}
```

4. Run `terraform plan` to see the new resources
5. Run `terraform apply` to create them

### Step 5: Test Your S3 Bucket
1. Check the outputs to see your S3 bucket name
2. Go to the AWS S3 console
3. Verify your bucket was created
4. Try uploading a test file

## 🎓 Learning Points

- **State Management**: Terraform tracks what exists vs. what you want
- **Planning**: Always use `terraform plan` before applying
- **Incremental Changes**: Terraform only changes what's different
- **Resource Dependencies**: Resources are created in the correct order
- **Provider Management**: New providers need to be declared

## 🔍 Expected Outputs

After completing the exercise, you should see:
- VPC with CIDR 10.0.0.0/16
- Public subnet in us-west-2a
- EC2 instance (t2.small)
- S3 bucket with a unique name
- All resources properly tagged

## 🧹 Clean Up
When you're done:
```bash
terraform destroy
```

## 🎉 Success Criteria
- [ ] Successfully deployed initial infrastructure
- [ ] Modified instance type and applied changes
- [ ] Added S3 bucket resource
- [ ] Verified all resources in AWS console
- [ ] Understood the planning and applying process

## 🚀 Next Steps
- Try the next exercise in this folder
- Move to module **02-variables** to learn about variables
- Experiment with different resource types

## 💡 Tips
- Use `terraform show` to see current state
- Use `terraform state list` to see all managed resources
- Check `terraform plan` output carefully before applying
- Use the AWS console to verify your resources

Good luck! 🌟 