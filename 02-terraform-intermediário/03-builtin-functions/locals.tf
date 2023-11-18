locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "arquivo-gerado-do-template"

  common_tags = {
    "Owner" = "Karlla Nascimento"
    "Year"  = "2023"
  }
}