provider "aws" {
    region="us-east-1"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "infra_web" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "infra"

    tags = {
        Name = "${var.name}"
    }
}