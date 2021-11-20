provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "local" {
    path = "./.terraform.tfstate"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../../vpc/.terraform.tfstate"
  }
}

module "sg" {
  source = "git@github.com:igorgolm/dev-demo-modules.git//sg?ref=v0.0.1"
  
  name              = var.name
  description       = var.description
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  security_group_id = module.sg.sg_id
  region            = var.region
  profile           = var.profile
  ingress_rules     = var.ingress_rules
}
