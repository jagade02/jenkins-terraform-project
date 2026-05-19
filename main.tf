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

resource "aws_instance" "my_server" {
  ami           = "ami-03f4878755434977f" # Ha ap-south-1 madhla standard Amazon Linux 3 AMI ID aahe
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins-Created-EC2"
  }
}
