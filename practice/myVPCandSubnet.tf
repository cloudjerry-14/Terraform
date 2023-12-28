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

//We will be creating a subnet in given VPC and CIDR range

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.prod_VPC.id  // This will fetch the id that will get created once our terraform code runs
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Subnet1"
  }
}
