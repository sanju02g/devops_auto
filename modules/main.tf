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
resource "aws_s3_bucket" "mybucket" {
//  count=2   // count to deploy same multiple resourses 
//  bucket  = "${var.bucket_name}-${count.index}"
  bucket  = "${var.bucket_name}"
  tags    = {
  Name           = "MyS3testBucket"
  Environment    = "Production"
  }
}
output "s3_arn"{
value="testprowiz"
}
