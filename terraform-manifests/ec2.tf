# Availability Zones Datasources
data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}



resource "aws_instance" "ec2demo" {
  ami = var.ami
  #instance_type = var.instance_type
  instance_type = var.instance_type_list[0]
  #instance_type = var.instance_type_map["test"]
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id ]
  count = 2
  #Create EC2 instance in All Availability Zones of a VPC
  for_each = tpset(data.aws_availability_zones.my_azones.names)
  availability_zone = each.key
  tags = {
    "Name" = "For_Each-Demo-${each.value}"
  }
  # tags = {
  #   "Name" = "Count-Demo-${count.index}"
  # }
}