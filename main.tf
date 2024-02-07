terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAQFXVA6BEFZSXKNUB"
  secret_key = "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"
}
/*resource "aws_s3_bucket" "mybucket" {
  bucket  = "my-unique-bucketname"
  tags    = {
  Name           = "MyS3testBucket"
  Environment    = "Production"
  }
}*/
