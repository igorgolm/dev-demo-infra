variable "vpc_cidr_block" {
  default = "192.168.130.0/24"
}

variable "public_subnet_map_public_ip_on_launch" {
  default = true
}

variable "name" {
  default = "eu_kube_demo"
}

variable "profile" {
  default = "default"
}

variable "region" {
    default = "eu-central-1"
}