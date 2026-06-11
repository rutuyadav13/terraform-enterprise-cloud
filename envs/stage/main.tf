terraform {
  cloud {
    organization = "enterprise-lab"

    workspaces {
      name = "stage"
    }
  }
}

provider "aws" {
  region = var.region

  assume_role_with_web_identity {
    role_arn = var.role_arn
  }
}

module "ec2" {
  source        = "../../modules/ec2"
  instance_type = var.instance_type
  env           = "stage"
}