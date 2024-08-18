provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test_server" {
    ami = "ami-0c8e23f950c7725b9"
    instance_type = "t2.micro"
    tags = {
        Name = "Test Server"
    }
    security_groups = ["${aws_security_group.test_sg.name}"]
}