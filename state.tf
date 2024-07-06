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
    bucket         = "tf-backend-tfstate-rajender-dev1"
    key            = "ap-south-1/rajender-dev1/vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-srishti-dev"
    profile        = "rajender-vedific-admin"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}
