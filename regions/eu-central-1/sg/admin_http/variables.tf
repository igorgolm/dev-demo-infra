variable "region" {
  default = "eu-central-1"
}

variable "name" {
  default = "ADMIN_HTTP"
}

variable "profile" {
  default = "default"
}

variable "description" {
  default = "Rules for admin HTTP access"
}

variable "environment" {
  default = "demo"
}

variable "ingress_rules" {
  default = [
    {
      from_port = 80
      to_port   = 80
      ingress_description = "HTTP access from admin home"
      protocol = "tcp"
      cidr_blocks = ["80.221.36.234/32"]
    },
    {
      from_port = 443
      to_port   = 443
      ingress_description = "HTTPS access from admin home"
      protocol = "tcp"
      cidr_blocks = ["80.221.36.234/32"]
    },
  ]
}
