data "aws_ami" "ubuntu" {

  owners = ["amazon"]

  most_recent = true

#   name_regex = "ubuntu"

    filter {
    name  = "name"
    values = ["amzn-ami-hvm-*-x86_64-ebs"]
    }

}