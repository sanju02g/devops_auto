provider "aws" {

    region = "us-east-1"
}

resource "aws_s3" "my_bucket" {
    bucket= "my-unique-bucket"
    tags = {
        name = "my_bucket"
        Envinronment = "testing"
    }

}
