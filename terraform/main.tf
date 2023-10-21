provider "aws" {
region = "ap-southeast-2"
access_key = "AKIA2VGJUPMDJ2JOA5OW"
secret_key = "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"
}

resource "aws_instance" "Key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "mykey1"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Environment = "dev"
Name = "project_instance"
}
}
