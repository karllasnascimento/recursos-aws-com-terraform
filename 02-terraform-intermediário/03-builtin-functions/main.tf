terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.4.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }

  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}