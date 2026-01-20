resource "aws_s3_bucket" "example" {
  bucket = "my-bucket-neny55"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"

  tags = {
    Name = "my-server134"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc1"
  }
}