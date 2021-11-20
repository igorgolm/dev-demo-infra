variable "region" {
  default = "eu-central-1"
}

variable "name" {
  default = "INTERNAL"
}

variable "profile" {
  default = "default"
}

variable "description" {
  default = "Allow internal traffic"
}

variable "environment" {
  default = "demo"
}

variable "ingress_rules" {
  default = [
    {
      from_port = 0
      to_port   = 0
      ingress_description = "Allow traffic inside the subnet"
      protocol = "-1"
      cidr_blocks = ["192.168.130.64/26"]
    }
  ]
}
