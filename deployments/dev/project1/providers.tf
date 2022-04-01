terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  backend "remote" {
    hostname     = "hoo29.scalr.io"
    organization = "env-tvnmptmlmma8ds8"
    workspaces {
      name = "project1-dev"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

