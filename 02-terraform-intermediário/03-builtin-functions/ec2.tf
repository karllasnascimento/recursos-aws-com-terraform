resource "aws_instance" "name" {
  count = local.instance_number < 0 ? 0 : local.instance_number

  ami = var.instance_ami

  instance_type = lookup(var.instance_type, var.env)

  tags = merge(
    local.common_tags,
    {
      Project = "Estudo terraform"
      Env     = format("%s", var.env)
      Name    = format("Instance %d", count.index + 1)
    }
  )

}