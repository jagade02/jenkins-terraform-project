terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Mumbai Region
}

resource "aws_instance" "devops_server" {
  ami           = "ami-03f4878755434977f" # Amazon Linux 3 AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Launched-By-Jenkins"
  }
}
