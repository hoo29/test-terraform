terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.1"
    }
  }
  required_version = "~> 1.3"

  cloud {
    hostname     = "hoo29.scalr.io"
    organization = "env-v0o0puaciic73h316"
    workspaces {
      name = "test-terraform"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
