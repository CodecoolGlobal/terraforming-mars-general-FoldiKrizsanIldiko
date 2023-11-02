#AWS Provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket         = "istumpf-s3-backend"
    key            = "wordpress.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform_state"
  }
}