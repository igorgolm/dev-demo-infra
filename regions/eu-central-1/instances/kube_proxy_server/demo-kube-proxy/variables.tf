variable "name" {
  default = "demo-kube"
}

variable "root_vsize" {
  default = "10"
}

variable "ami" {
  default = "ami-0a49b025fffbbdac6"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "sg_tags" {
  type    = list(string)
  default = ["ADMIN_SSH", "ADMIN_HTTP", "INTERNAL"]
}

variable "subnet" {
  default = "demo_kube"
}

variable "region" {
  default = "eu-central-1"
}