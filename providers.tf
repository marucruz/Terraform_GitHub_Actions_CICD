provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "maru-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "maru-date-dblocks"
    encrypt        = true
  }
}
