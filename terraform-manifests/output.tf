#Terraform Output Values

# EC2 Instance Public IP

# Output Instance public ip
output "instance_publicip" {
    description = "EC2 Instance Public IP"
    value = aws_instance.ec2demo.public_ip
}

# Output Instance public DNS
output "instance_pulicdns" {
    description = "EC2 instance Public DNS"
    value = aws_instance.ec2demo.public_dns
}

# Ouput - For loop with list
output "for_output_list" {
  description = "For loop with list"
  value = [for instance in aws_instance.ec2demo: instance.public_dns]
}

# Output - For Loop with map
output "for_output_map1" {
    description = "For Loop with Map"
    value = {for instance in aws_instance.ec2demo: instance.id => instance.public_dns}
}

# Output - For Loop with Map Advanced
output "for_output_map1" {
    description = "For Loop with Map - Advanced"
    value = {for c, instance in aws_instance.ec2demo: c => instance.public_dns}
}


