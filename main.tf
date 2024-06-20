terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3_lugo" {
  bucket = "lugo-gha"

  tags = {
    owner        = "jhon.lugo"
    boootcamp    = "devops"
  }
}