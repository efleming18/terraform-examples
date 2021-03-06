provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_spot_instance_request" "spot" {
  ami           = "ami-2757f631"
  instance_type = var.instanceSize
  spot_price    = "0.03"

  tags = {
      Name = "spot"
  }
}