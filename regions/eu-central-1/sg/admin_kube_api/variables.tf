variable "region" {
  default = "eu-central-1"
}

variable "name" {
  default = "ADMIN_K8S_API"
}

variable "profile" {
  default = "default"
}

variable "description" {
  default = "Rules for admin K8S API access"
}

variable "environment" {
  default = "demo"
}

variable "ingress_rules" {
  default = [
    {
      from_port = 6443
      to_port   = 6443
      ingress_description = "Access to k8s API"
      protocol = "tcp"
      cidr_blocks = ["80.221.36.234/32"]
    }
  ]
}
