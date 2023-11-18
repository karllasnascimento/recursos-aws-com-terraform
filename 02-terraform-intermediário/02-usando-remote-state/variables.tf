variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "estudoterraform"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-0230bd60aa48260c6"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}
