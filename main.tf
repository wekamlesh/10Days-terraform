# Terraform configuration for Day 1 - Basic EC2 Instance

# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Get the default VPC
data "aws_vpc" "default" {
  default = true
}

# Create a subnet in the default VPC
resource "aws_subnet" "default_subnet" {
  vpc_id                  = data.aws_vpc.default.id
  cidr_block              = "172.31.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "terraform-default-subnet"
  }
}

# Create a simple EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-06fa3f12191aa3337"  # Amazon Linux 2 AMI for ap-south-1
  instance_type = var.ec2_type
  subnet_id = aws_subnet.default_subnet.id
  tags = {
    Name = var.instance_name
  }
}
