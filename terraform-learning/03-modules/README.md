# 03 - Terraform Modules 🧱

Modules help you organize and reuse infrastructure code. In this lesson you'll create a simple module and call it from your root configuration.

## 🎯 What You'll Learn

- Module structure and source paths
- Passing variables to modules
- Organizing reusable components

## 🚀 Try It Out

1. Inspect the module in `modules/simple-instance`
2. Review `main.tf` to see how the module is called
3. Adjust variables in `variables.tf`
4. Run `terraform plan` and `terraform apply`

## 📁 Files in This Module

- `main.tf` - Calls the local module
- `variables.tf` - Inputs passed to the module
- `modules/simple-instance` - Example module creating an EC2 instance

## 🎉 Next Steps

Experiment with creating additional modules or converting existing configurations into modules. Continue to **04-state** to learn how Terraform tracks your infrastructure.
