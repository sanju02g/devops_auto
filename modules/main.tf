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
  region     = "us-east-1"
  access_key = "AKIATYW55XGJGNSFDEF6"
  secret_key = "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"
}
//-----------------------------------------------EC2-CREATION-------------------------------

resource "aws_instance" "minikube_instance"{
ami= "ami-04e5276ebb8451442"
instance_type = "t2.medium"
vpc_security_group_ids = ["sg-1d0c9051"]
associate_public_ip_address = true
subnet_id= "subnet-9b12d9a5"
key_name= "demo"
ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 10
    volume_type = "gp2"
  }

}

output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
