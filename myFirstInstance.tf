// We'll always need to mention the provider in order to pull the required plugins to create the infra on that provider.


provider "aws" {
  region     = "us-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
}

// Below code will create a simple and basic instance in free tier

resource "aws_instance" "my-first-instance" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  tags = {
    name = "my-server"
  }

}
