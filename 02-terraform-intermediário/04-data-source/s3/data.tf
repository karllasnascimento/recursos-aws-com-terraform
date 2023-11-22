data "terraform_remote_state" "server" {

  backend = "s3"

  config = {
    bucket  = "tfstate-064023762811"
    key     = "dev/04-data-sources-s3/terraform-tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}
