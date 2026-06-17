terraform {
  required_version = ">= 1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
  }

  cloud {
    organization = "ravi-hcp"
    workspaces {
      name = "hcp-demo"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}