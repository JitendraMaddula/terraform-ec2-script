terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c" # Replace with your desired AMI ID
  instance_type = "t2.micro"
  key_name      = "in Mac" # Replace with your SSH key name

  tags = {
    Name = var.aws_instance_name
  }
}
