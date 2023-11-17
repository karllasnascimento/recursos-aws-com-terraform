terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-13-09"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    UpdateAt    = "2023-11-17"
  }
}
