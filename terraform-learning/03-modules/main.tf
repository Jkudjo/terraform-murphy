provider "aws" {
  region = var.region
}

module "server" {
  source        = "./modules/simple-instance"
  ami           = var.ami
  instance_type = var.instance_type
}

