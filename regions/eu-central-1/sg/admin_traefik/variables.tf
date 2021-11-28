variable "region" {
  default = "eu-central-1"
}

variable "name" {
  default = "ADMIN_TRAEFIK"
}

variable "profile" {
  default = "default"
}

variable "description" {
  default = "Rules for admin Traefik dashboard access"
}

variable "environment" {
  default = "demo"
}

variable "ingress_rules" {
  default = [
    {
      from_port = 8080
      to_port   = 8080
      ingress_description = "Traefik access from admin home"
      protocol = "tcp"
      cidr_blocks = ["80.221.36.234/32", "185.40.89.15/32"]
    }
  ]
}
