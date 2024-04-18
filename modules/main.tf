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
 # access_key = "AKIAQFXVA6BEFZSXKNUB"
 # secret_key = "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"
}
resource "s3_names"{
  type=set(string) 
  default=["1","2"]
}
variable "aws_s3_bucket" "mybucket" {
//count functinality example
/*  count=2   // count to deploy same multiple resourses 
  bucket  = "${var.bucket_name}-${each.key}"
  tags    = {
  Name           = "MyS3testBucket.${each.key}"
  Environment    = "Production.${each.key}"
  }*/

//for_each functionality example
  for_each=s3_names
  bucket  = "${var.bucket_name}-${each.key}"
  tags    = {
  Name           = "MyS3testBucket.${each.key}"
  Environment    = "Production.${each.key}"
  }

}
output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
