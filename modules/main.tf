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
  access_key = "AKIATYW55XGJGNSFDEF6"
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
user_data = file("${path.module}/userdata.sh")
/*connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }
provisioner "remote-exec" {
    inline = [
      "sudo yum update -y"
    ]
  }*/

}

//---------------------------------------------END EC2 CREATION --------------------------------

output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
