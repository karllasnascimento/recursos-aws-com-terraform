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

variable "name" {
  type        = string
  description = "Bucket anem"
}

variable "acl" {

  type        = string
  description = ""
  default     = "private"
}

variable "policy" {
  type        = string
  description = ""
  default     = null
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}

variable "key_prefix" {
  type    = string
  default = ""
}

variable "files" {
  type    = string
  default = ""
}

variable "website" {
  description = "Map containing website configuration."
  type        = map(string)
  default     = {}
}

variable "versioning" {
  description = "Map containing versioning configuration."
  type        = map(string)
  default     = {}
}
