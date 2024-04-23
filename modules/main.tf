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
 # access_key = "AKIAQFXVA6BEFZSXKNUB"
 # secret_key = "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"
}
//-----------------------------------------------EC2-CREATION-------------------------------

resource "aws_instance" "minikube_instance"{
ami= "ami-04e5276ebb8451442"
instance_type = "t2.medium"
vpc_security_group_ids = ["sg-1d0c9051"]
associate_public_ip_address = true
subnet_id= "subnet-9b12d9a5"
key_name= "demo"
ebs_block_device = [
    {
      device_name = "/dev/sdf"
      volume_type = "gp3"
      volume_size = 10
      throughput  = 200
      encrypted   = true
      //kms_key_id  = aws_kms_key.this.arn
      tags = {
        MountPoint = "/mnt/data"
      }
    }
  ]

}

output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
