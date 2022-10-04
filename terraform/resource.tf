resource "aws_instance" "ec2demo" {
    ami = "ami-08c40ec9ead489470"
    instance_type = "t2.micro"
}