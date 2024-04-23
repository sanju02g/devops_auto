terraform{
  required_provider{
    aws={
      source= "hashicorp/aws"
      version= "~> 5.0"
    }
  }
}
provider "aws"{
  region= "us-east-1"
}
module "ec2_instance"{
  source= "./modules"
}
