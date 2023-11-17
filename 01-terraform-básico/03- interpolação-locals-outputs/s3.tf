resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "meubucketcriadonoconsoledaaws13092020202"

  tags = {
    Criado    = "17/11/2023"
    Importado = "17/11/2023"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_object" "this" {

  bucket = aws_s3_bucket.this.bucket

  key = "config/${local.ip_filepath}"

  source = local.ip_filepath

  etag = filemd5(local.ip_filepath)

  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_object" "random" {

  bucket = aws_s3_bucket.this.bucket

  key = "config/${random_pet.bucket.id}.json"

  source = local.ip_filepath

  etag = filemd5(local.ip_filepath)

  content_type = "application/json"

  tags = local.common_tags
}