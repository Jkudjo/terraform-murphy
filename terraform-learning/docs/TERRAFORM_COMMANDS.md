# Terraform Command Reference 📚

A comprehensive guide to the most commonly used Terraform commands.

## 🚀 Core Commands

### `terraform init`
Initializes a Terraform working directory.
```bash
terraform init                    # Initialize with default settings
terraform init -upgrade          # Upgrade provider versions
terraform init -backend-config=config.tfbackend  # Configure backend
```

**What it does:**
- Downloads required providers
- Initializes backend configuration
- Sets up working directory

### `terraform plan`
Creates an execution plan.
```bash
terraform plan                    # Create plan
terraform plan -out=plan.tfplan  # Save plan to file
terraform plan -var="name=value" # Set variable values
terraform plan -refresh=false    # Skip refresh
```

**What it does:**
- Compares current state with desired state
- Shows what will be created, modified, or destroyed
- Validates configuration syntax

### `terraform apply`
Applies the changes required to reach the desired state.
```bash
terraform apply                    # Apply with interactive confirmation
terraform apply -auto-approve    # Apply without confirmation
terraform apply plan.tfplan      # Apply specific plan file
terraform apply -var="name=value" # Set variable values
```

**What it does:**
- Creates, modifies, or destroys resources
- Updates state file
- Provides detailed output

### `terraform destroy`
Destroys all resources managed by Terraform.
```bash
terraform destroy                 # Destroy with confirmation
terraform destroy -auto-approve  # Destroy without confirmation
terraform destroy -target=aws_instance.web  # Destroy specific resource
```

**What it does:**
- Removes all managed resources
- Updates state file
- **Use with caution!**

## 🔍 Inspection Commands

### `terraform show`
Displays the current state or a saved plan.
```bash
terraform show                    # Show current state
terraform show plan.tfplan       # Show saved plan
terraform show -json             # Output in JSON format
```

### `terraform state`
Advanced state management.
```bash
terraform state list             # List all resources in state
terraform state show aws_instance.web  # Show specific resource
terraform state mv aws_instance.old aws_instance.new  # Rename resource
terraform state rm aws_instance.web     # Remove from state
terraform state pull             # Download state from backend
terraform state push             # Upload state to backend
```

### `terraform output`
Displays output values.
```bash
terraform output                  # Show all outputs
terraform output -json           # Show outputs in JSON
terraform output -raw instance_id  # Show specific output value
```

## 🛠️ Utility Commands

### `terraform validate`
Validates configuration files.
```bash
terraform validate               # Validate syntax and configuration
```

### `terraform fmt`
Rewrites configuration files to canonical format.
```bash
terraform fmt                    # Format all .tf files
terraform fmt -check            # Check if files need formatting
terraform fmt -diff             # Show what would change
```

### `terraform version`
Shows Terraform version.
```bash
terraform version               # Show version and provider versions
```

### `terraform workspace`
Manages workspaces.
```bash
terraform workspace list        # List all workspaces
terraform workspace new dev     # Create new workspace
terraform workspace select dev  # Switch to workspace
terraform workspace delete dev  # Delete workspace
```

## 🔧 Advanced Commands

### `terraform import`
Imports existing resources into Terraform state.
```bash
terraform import aws_instance.web i-12345678  # Import EC2 instance
```

### `terraform taint`
Marks a resource for recreation.
```bash
terraform taint aws_instance.web  # Mark instance for recreation
```

### `terraform untaint`
Removes taint from a resource.
```bash
terraform untaint aws_instance.web  # Remove taint
```

### `terraform refresh`
Updates state file with real-world infrastructure.
```bash
terraform refresh                # Refresh all resources
terraform refresh -target=aws_instance.web  # Refresh specific resource
```

## 📁 File Management

### `terraform get`
Downloads and updates modules.
```bash
terraform get                    # Download modules
terraform get -update           # Update modules
```

### `terraform graph`
Generates a visual representation of configuration.
```bash
terraform graph                  # Generate DOT format
terraform graph | dot -Tsvg > graph.svg  # Create SVG image
```

## 🚨 Important Notes

### Command Order
1. **Always** run `terraform init` first
2. **Always** run `terraform plan` before `terraform apply`
3. **Always** review the plan output carefully
4. **Use** `terraform destroy` with extreme caution

### Best Practices
- Use `-auto-approve` only in CI/CD pipelines
- Save plans with `-out` for review
- Use workspaces for environment separation
- Keep state files secure and backed up
- Use remote state for team collaboration

### Common Flags
- `-var="name=value"` - Set variable values
- `-var-file="file.tfvars"` - Load variable file
- `-target="resource"` - Target specific resources
- `-parallelism=n` - Limit concurrent operations
- `-refresh=false` - Skip refresh step

## 🎯 Quick Reference

| Command | Purpose | When to Use |
|---------|---------|-------------|
| `init` | Setup | First time, new providers |
| `plan` | Preview | Before every apply |
| `apply` | Deploy | After reviewing plan |
| `destroy` | Cleanup | When done learning |
| `show` | Inspect | Check current state |
| `output` | Display | Get resource information |
| `validate` | Check | Verify configuration |
| `fmt` | Format | Clean up code |

## 🆘 Getting Help

```bash
terraform -help                  # General help
terraform <command> -help       # Command-specific help
```

Happy Terraforming! 🚀 