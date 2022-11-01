#Terraform Output Values

# EC2 Instance Public IP

# Output Instance public ip EC2 [0]

# output "instance_public_ip_EC2_0" {
#     description = "EC2 Instance Public IP"
#     value = aws_instance.ec2demo[0].public_ip
# }

# Output Instance public ip EC2 [1]
output "instance_public_ip_EC2_1" {
    description = "EC2 Instance Public IP"
    value = aws_instance.ec2demo.*.public_ip
}


# # Output Instance public DNS ip EC2 [0]
# output "instance_public_dns_EC2_0" {
#     description = "EC2 instance Public DNS"
#     value = aws_instance.ec2demo[0].public_dns
# }


# Output Instance public DNS ip EC2[1]
output "instance_public_dns_EC2_1" {
    description = "EC2 instance Public DNS"
    value = aws_instance.ec2demo.*.public_dns
}


# Ouput - For loop with list
output "for_output_list_public_dns" {
  description = "For loop with list see public dns any instances"
  value = [for instance in aws_instance.ec2demo: instance.public_dns]
}

output "for_output_list_public_ip"{
    description = "For loop with see public ip any instances"
    value = [for instance in aws_instance.ec2demo: instance.public_ip]
}


# # Output - For Loop with map
# output "for_output_map1" {
#     description = "For Loop with Map"
#     value = {for instance in aws_instance.ec2demo: instance.id => instance.public_dns}
# }

# # Output - For Loop with Map Advanced
# output "for_output_map2" {
#     description = "For Loop with Map - Advanced"
#     value = {for c, instance in aws_instance.ec2demo: c => instance.public_dns}
# }

#Output Legacy Splat Operator

