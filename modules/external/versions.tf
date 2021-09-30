terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 1.0.0, < 3.0.0"
    }
  }
  required_version = ">= 0.13"
}
