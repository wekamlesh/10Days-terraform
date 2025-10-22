variable "region" {
  description = "AWS region"
  default = "ap-south-1"
  type = string
}

variable "ec2_type" {
    description = "AWS EC2 type"
    default = "t3.micro"
    type = string
}

variable "instance_name" {
    description = "Name of the EC2 instance"
    default = "my_terraform_instance"
    type = string
}
