variable "vpc_cidr_block" {
  default = "192.168.130.64/26"
}

variable "map_public_ip_on_launch" {
  default = true
}

variable "name" {
  default = "eu_demo_kube"
}

variable "profile" {
  default = "default"
}

variable "environment" {
  default = "demo"
}

variable "region" {
  default = "eu-central-1"
}

variable "availability_zone" {
  default = "eu-central-1a"
}