terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "huw-migration-test"

    workspaces {
      name = "test-terraform"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}
