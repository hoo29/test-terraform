terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  backend "remote" {
    hostname     = "ablyrealtime.scalr.io"
    organization = "env-u1aqjv6cn31b070"
    workspaces {
      name = "cdk"
    }
  }
}
