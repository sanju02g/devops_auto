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

module "sandbox" {           //--> root module
    source = "./modules"     //--? child module
    bucket_name="prowizt-bucket1"
}
module "s3arn" {           
    source = "./modules"    
    bucket_name=module.sandbox.s3_arn        //inputting the value generated in other module
}
