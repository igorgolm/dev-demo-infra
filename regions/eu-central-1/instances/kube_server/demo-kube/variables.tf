variable "name" {
  default = "demo-kube"
}

variable "root_vsize" {
  default = "20"
}

variable "ami" {
  default = "ami-0a49b025fffbbdac6"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "sg_tags" {
  type    = list(string)
  default = ["ADMIN_SSH", "ADMIN_K8S_API", "INTERNAL"]
}

variable "subnet" {
  default = "demo_kube"
}

variable "region" {
  default = "eu-central-1"
}