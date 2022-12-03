provider "aws" {
  access_key = "AKIA3IUPGVBHMAW6QH6O"
  secret_key = "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"
  region     = "ap-south-1"
}
resource "aws_instance" "test_server" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
  key_name = "sri-key"
   subnet_id = "subnet-0f840cec82fced399"
   security_groups = ["sg-0e80014777a0f2a6a"]
  tags = {
    Environment = "testserver"
    Name = "test_server"
  }
}
