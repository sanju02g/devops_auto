terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQFXVA6BEFZSXKNUB"
  secret_key = "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"
}
