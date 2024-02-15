terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
module "sandbox" {
    source = "./modules"
    bucket_name="prowizt-bucket"
}
