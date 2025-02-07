terraform {
  backend "s3" {
    bucket         = "ran-dom-buck"
    region         = "us-east-1"
    key            = "random.pem"
    dynamodb_table = "ran-dom-table"
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
