provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "my_new_server" {
  ami           = "ami-007020fd9c84617ee" 
  instance_type = "t2.micro"

  tags = {
    Name = "Launched-By-Jenkins-Automated"
  }
}