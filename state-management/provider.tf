terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.49.0"
    }
  }
  backend "s3" {
        bucket = "my-demo-bucket-terraform-bba7ce24765181d4"
        key = "backend.tf-state"
        region = "ap-south-1"
    }
}

provider "aws" {
  region = var.region
}

