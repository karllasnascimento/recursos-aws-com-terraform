data "aws_ami" "ubuntu" {

  owners = ["amazon"]

  most_recent = true

  #   name_regex = "ubuntu"

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-ebs"]
  }

}

resource "aws_instance" "this" {

  for_each = {
    web = {
      name = "Web server"
      type = "t3.micro"
    }
    ci_cd = {
      name = "CI/CD server"
      type = "t3.micro"
    }
  }

  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(each.value, "type", null)

  tags = {
    Project = "Estudo terraform certificação"
    Name    = "${each.key}: ${lookup(each.value, "name", null)}"
    Data    = "22 de novembro"
  }


}