provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test_server" {
    ami = "ami-0c8e23f950c7725b9"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-06b956a6e7be23bf9"]
    subnet_id = "subnet-0ce4a78e1da4cc91b"
    key_name = "new-macbook-kp"
    associate_public_ip_address = true
    tags = {
        Name = "Test Server"
    }
    
}