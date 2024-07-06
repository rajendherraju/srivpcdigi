provider "aws" {
  region  = var.region
  profile = var.aws_profile
  default_tags {
    tags = var.common_tags
  }
}


terraform {
  required_version = ">= 1.2.0"

  backend "s3" {
    bucket         = "tf-backend-tfstate-srishti-dev"
    key            = "ap-south-1/srishti-dev/vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-srishti-dev"
    profile        = "srishti-vedific-admin"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}
