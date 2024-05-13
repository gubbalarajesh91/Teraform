terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

#Provide authentication here
provider "aws" {
  region = "us-east-1"
}

# module "security-group" {
#   source  = "terraform-aws-modules/security-group/aws"
#   version = "5.1.2"
# }