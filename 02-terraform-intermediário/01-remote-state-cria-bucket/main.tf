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
  profile = "estudoterraform"
}



data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    UpdateAt    = "2023-11-17"
  }

}

output "remote_state_bucket" {

  value = aws_s3_bucket.remote-state.bucket

}

output "remote_state_bucket_arn" {

  value = aws_s3_bucket.remote-state.arn

}