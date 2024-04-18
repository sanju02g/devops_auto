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
//---------------------------------------------------------------------------------------------------
variable "s3_names"{
  type=list(string) 
  default=["1","2"]
}
variable "s3_names_object"{
  type=map(object({
  names=string
  }))
  default={
  first={
  names="1"
  }
second={
  names="2"
}
}
}
//----------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "mybucket" {
//------------------count functinality example-------------------------------------------------------
/*  count=2   // count to deploy same multiple resourses 
  bucket  = "${var.bucket_name}-${each.value}"
  tags    = {
  Name           = "MyS3testBucket.${each.value}"
  Environment    = "Production.${each.value}"
  }*/

//--------------------for_each functionality example....................................................
//  for_each=toset(var.s3_names)
  for_each=var.s3_names_object
  bucket  = "${var.bucket_name}-${each.key}"
  tags    = {
  Name           = "MyS3testBucket.${each.key}"
  Environment    = "Production.${each.key}"
  }

}
output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
