provider "aws" {
region = "ap-southeast-2"
access_key = "AKIA2VGJUPMDHHK3WKHF"
secret_key = "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"
}

resource "aws_instance" "Key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "mykey1"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
