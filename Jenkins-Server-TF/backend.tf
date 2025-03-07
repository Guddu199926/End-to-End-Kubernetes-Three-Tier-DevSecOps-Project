terraform {
  backend "s3" {
    bucket         = "testingonlybucketfor"
    region         = "us-east-1"
    key            = "terraform/state.tfstate"
    dynamodb_table = "UsersTable"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
