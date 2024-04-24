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
 // access_key = "AKIATYW55XGJGNSFDEF6"
 // secret_key = "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"
}
//-----------------------------------------------EC2-CREATION-------------------------------

resource "aws_instance" "minikube_instance"{
ami= "ami-001843b876406202a"
instance_type = "t2.medium"
/*lifecycle {
    prevent_destroy = true
  }*/
vpc_security_group_ids = ["sg-07311584c92f02038"]
security_groups = ["sg-07311584c92f02038"]
associate_public_ip_address = true
subnet_id= "subnet-06fb8745e7f68014f"
key_name= "minikey"
user_data = file("${path.module}/userdata.sh")
connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${path.module}/minikey.pem")
    host        = self.public_ip
  }
/*provisioner "remote-exec" {
    inline = [
      "sudo yum update -y"
    ]
  }*/

}

//---------------------------------------------END EC2 CREATION --------------------------------

output "s3_arn"{          //outputting the resouses values
value="testprowiz"
}
