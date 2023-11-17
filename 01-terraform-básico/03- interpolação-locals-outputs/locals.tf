locals {

  ip_filepath = "ips.json"

  common_tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    UpdateAt    = "2023-11-17"
  }
}