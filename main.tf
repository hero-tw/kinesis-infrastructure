provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/jsilva/.aws/credentials"
  profile                 = "jp"
}

module "kinesis" {
  source = "./kinesis"
}