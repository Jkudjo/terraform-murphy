# Terraform Installation Guide 🛠️

Complete guide to install Terraform and set up your learning environment.

## 🖥️ System Requirements

- **Operating System**: Windows, macOS, or Linux
- **Architecture**: x86_64 or ARM64
- **Memory**: Minimum 2GB RAM
- **Storage**: At least 100MB free space
- **Network**: Internet connection for downloading providers

## 📦 Installing Terraform

### Option 1: Official Binary (Recommended)

#### Linux/macOS
```bash
# Download Terraform
wget https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip

# Install unzip if not available
sudo apt-get install unzip  # Ubuntu/Debian
sudo yum install unzip      # CentOS/RHEL

# Extract and install
unzip terraform_1.6.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Verify installation
terraform version
```

#### Windows
1. Download from [Terraform releases page](https://releases.hashicorp.com/terraform/)
2. Extract the ZIP file
3. Add the extracted folder to your PATH environment variable
4. Open Command Prompt and run `terraform version`

#### macOS with Homebrew
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
terraform version
```

### Option 2: Package Managers

#### Ubuntu/Debian
```bash
# Add HashiCorp GPG key
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Add HashiCorp repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update and install
sudo apt update
sudo apt install terraform
```

#### CentOS/RHEL/Fedora
```bash
# Add HashiCorp repository
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# Install Terraform
sudo yum install terraform
```

## ☁️ Cloud Provider Setup

### AWS Setup

#### 1. Install AWS CLI
```bash
# Linux/macOS
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Windows
# Download from https://aws.amazon.com/cli/
```

#### 2. Configure AWS Credentials
```bash
aws configure
# Enter your AWS Access Key ID
# Enter your AWS Secret Access Key
# Enter your default region (e.g., us-west-2)
# Enter your output format (json)
```

#### 3. Verify Configuration
```bash
aws sts get-caller-identity
```

### Azure Setup

#### 1. Install Azure CLI
```bash
# Linux
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# macOS
brew install azure-cli

# Windows
# Download from https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
```

#### 2. Login to Azure
```bash
az login
```

### Google Cloud Setup

#### 1. Install Google Cloud SDK
```bash
# Linux/macOS
curl https://sdk.cloud.google.com | bash
exec -l $SHELL

# Windows
# Download from https://cloud.google.com/sdk/docs/install
```

#### 2. Initialize and Login
```bash
gcloud init
gcloud auth application-default login
```

## 🔧 IDE Setup

### VS Code (Recommended)
1. Install [VS Code](https://code.visualstudio.com/)
2. Install Terraform extension:
   - HashiCorp Terraform
   - Terraform Syntax Highlighting
3. Configure settings for Terraform

### Other IDEs
- **IntelliJ IDEA**: Install Terraform plugin
- **Vim/Neovim**: Use terraform-ls language server
- **Emacs**: Use terraform-mode

## 📁 Project Structure Setup

```bash
# Create your learning directory
mkdir terraform-learning
cd terraform-learning

# Clone or copy the learning materials
# Navigate to the basics module
cd 01-basics

# Initialize Terraform
terraform init
```

## ✅ Verification Steps

### 1. Check Terraform Installation
```bash
terraform version
# Should show version 1.0.0 or higher
```

### 2. Check Cloud Provider Access
```bash
# AWS
aws sts get-caller-identity

# Azure
az account show

# Google Cloud
gcloud auth list
```

### 3. Test Basic Terraform Commands
```bash
cd terraform-learning/01-basics
terraform init
terraform validate
terraform plan
```

## 🚨 Common Issues

### Permission Denied
```bash
# Make sure Terraform is executable
chmod +x /usr/local/bin/terraform

# Check PATH
echo $PATH
which terraform
```

### Provider Download Issues
```bash
# Check internet connection
ping registry.terraform.io

# Clear Terraform cache
rm -rf .terraform
terraform init
```

### Cloud Provider Authentication
- Verify credentials are correct
- Check if credentials have expired
- Ensure proper permissions are assigned

## 🔒 Security Best Practices

1. **Never commit credentials** to version control
2. **Use IAM roles** when possible instead of access keys
3. **Rotate credentials** regularly
4. **Use least privilege** principle for permissions
5. **Enable MFA** for cloud accounts

## 📚 Next Steps

After successful installation:
1. Complete the **01-basics** module
2. Practice with the exercises
3. Learn about variables and modules
4. Explore different cloud providers

## 🆘 Getting Help

- **Terraform Documentation**: https://www.terraform.io/docs
- **Community Forum**: https://discuss.hashicorp.com/
- **GitHub Issues**: https://github.com/hashicorp/terraform/issues
- **Stack Overflow**: Use tag `terraform`

## 🎉 Congratulations!

You're now ready to start your Terraform learning journey! 

Happy Terraforming! 🚀 