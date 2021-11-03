variable "region" {
  default = "eu-central-1"
}

variable "name" {
  default = "ADMIN_SSH"
}

variable "profile" {
  default = "default"
}

variable "description" {
  default = "Rules for admin SSH access"
}

variable "environment" {
  default = "demo"
}

variable "ingress_rules" {
  default = [
    {
      from_port = 22
      to_port   = 22
      ingress_description = "Allow SSH access from admin home"
      protocol = "tcp"
      cidr_blocks = ["80.221.36.234/32"]
    }
  ]
}
