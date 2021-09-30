terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 1.2.0, < 3.0.0"
    }
  }
  required_version = ">= 0.13"
}
