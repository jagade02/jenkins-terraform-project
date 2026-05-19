provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "jenkins-terraform-secure-bucket-sejal-2026"
}
