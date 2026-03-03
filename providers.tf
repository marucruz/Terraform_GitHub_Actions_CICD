provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "maru-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    use_lockfile = "maru-date-dblocks"
    encrypt        = true
  }
}
