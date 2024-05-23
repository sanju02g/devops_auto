
terraform {
    backend "s3" {
        bucket = "reddemogreen"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}
