// We'll always need to mention the provider in order to pull the required plugins to create the infra on that provider.


provider "aws" {
  region     = "us-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
}

//This will create a VPC in given CIDR range

resource "aws_vpc" "prod_VPC" {
  cidr_block = "10.0.0.0/16"
  tags ={
    name ="myVPC"
  }
}
