####################################################
# Block-3: Resource block

resource "aws_instance" "ec2demo" {
  ami = var.ami
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = var.Name
  }
}
