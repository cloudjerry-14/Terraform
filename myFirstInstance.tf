provider "aws" {
  region     = "us-east-1"
  access_key = "access_key"
  secret_key = "secret_key"
}

resource "aws_instance" "my-first-instance" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = "t2.micro"
  tags = {
    name = "ubuntu-server"
  }

}
