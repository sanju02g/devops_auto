terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
// abhilash user credentials
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATYW55XGJFTPCOUWI"
  secret_key = "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"
}
//-----------------------------------------------EC2-CREATION-------------------------------

resource "aws_instance" "minikube_instance"{
ami= "ami-001843b876406202a"
instance_type = "t2.medium"
vpc_security_group_ids = ["sg-0958d5a6ca3d11d10"]
associate_public_ip_address = true
subnet_id= "subnet-09b2b12d2f9dffb77"
key_name= "test"
ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 10
    volume_type = "gp2"
  }

}

output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
