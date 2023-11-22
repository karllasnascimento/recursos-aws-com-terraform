terraform {
  required_version = "1.3.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }

  }
}

terraform {
  backend "s3" {
    bucket  = "tfstate-064023762811"
    key     = "dev/04-data-sources-s3/terraform-tfstate"
    region  = "us-east-1"
    profile = "estudoterraform"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
