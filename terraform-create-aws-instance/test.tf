provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_spot_instance_request" "spot" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  spot_price    = "0.03"

  tags = {
      Name = "spot"
  }
}