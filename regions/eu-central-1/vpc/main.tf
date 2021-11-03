provider "aws" {
  region = var.region
}

terraform {
  backend "local" {
    path = "./.terraform.tfstate"
  }
}

module "vpc" {
  source = "git@github.com:igorgolm/dev-demo-modules.git//vpc?ref=v0.0.1"

  region  = var.region
  profile = var.profile

  name                                  = var.name
  cidr_block                            = var.vpc_cidr_block
  public_subnet_map_public_ip_on_launch = var.public_subnet_map_public_ip_on_launch
}

resource "aws_internet_gateway" "eu_demo_kube" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "eu_demo_kube"
  }
}

resource "aws_default_route_table" "default_route" {
  default_route_table_id = module.vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu_demo_kube.id
  }
}

