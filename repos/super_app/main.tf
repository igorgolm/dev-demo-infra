provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "local" {
    path = "./.terraform.tfstate"
  }
}

module "codecommit" {
source = "git@github.com:igorgolm/dev-demo-modules.git//codecommit?ref=v0.0.4"
  
  repository_name   = var.repository_name
  description       = var.description
  default_branch    = var.default_branch
  region            = var.region
  profile           = var.profile
}
