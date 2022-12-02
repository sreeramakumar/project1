provider "aws" {
  access_key = "AKIA3IUPGVBHMAW6QH6O"
  secret_key = "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"
  region     = "ap-south-1"
}
resource "aws_instance" "test_server" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  tags = {
    Environment = "testserver"
    Name = "test_server"
  }
}
