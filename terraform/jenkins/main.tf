provider "aws" {
    region = "us-east-1"
}

variable "name" {
    description = "Name the instance on deploy"
}   

resource "aws_instance" "infra_jenkins" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "infra"

    tags = {
        Name = "${var.name}"
    }
}