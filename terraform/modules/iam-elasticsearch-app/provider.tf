terraform {
  backend "s3" {
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  alias  = "cloudfront"
  region = "us-east-1"
}

# https://www.terraform.io/docs/modules/usage.html#passing-providers-explicitly
# https://git.io/fh0qw

variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
}

provider "aws" {
  region = var.aws_region
}
