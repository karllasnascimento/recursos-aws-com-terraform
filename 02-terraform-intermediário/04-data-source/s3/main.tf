terraform {
  required_version = "1.3.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }

  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}