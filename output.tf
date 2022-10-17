#Terraform Output Values

# EC2 Instance Public IP

output "instance_publicip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.ec2demo.public_ip
}

output "instance_pulicdns" {
    description = "EC2 instance Public DNS"
    value = aws_instance.ec2demo.public_dns
}
