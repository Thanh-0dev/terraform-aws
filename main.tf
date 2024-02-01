terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-3"
}



resource "aws_lightsail_instance" "mt4-thanh-lightsail_instance" {
  name              = "mt4-thanh-lightsail_instance2"
  availability_zone = "eu-west-3a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"

  tags = {
    Name = "Lightsail Instance"
  }
}

resource "aws_s3_bucket" "mt4-thanh-bucket" {
  bucket = "mt4-thanh-hetic"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}