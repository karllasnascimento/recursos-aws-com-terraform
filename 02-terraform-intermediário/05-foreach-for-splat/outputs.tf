output "extensions" {
  value = local.files_extensions
}

output "extensions_upper" {
  value = local.files_extensions_upper
}

output "instance_arn" {
  value = [for k, v in aws_instance.this : v.arn]
}

output "instance_names" {
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

output "private_ips" {
  value = [for o in local.ips : o.private]
}

output "public_ips" {
  value = local.ips[*].public
}