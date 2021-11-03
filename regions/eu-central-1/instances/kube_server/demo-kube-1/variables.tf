variable "name" {
  default = "demo-kube-1"
}

variable "root_vsize" {
  default = "10"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-01e36b7901e884a10"
}

variable "sg_tags" {
  type    = list(string)
  default = ["ADMIN_SSH", "ADMIN_HTTP"]
}

variable "subnet" {
  default = "demo_kube"
}

variable "region" {
  default = "eu-central-1"
}
