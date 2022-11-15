

output "public_bastion_sg_group_id" {
    description     = "The ID of the security group"
    value           = module.complete_sg.this_security_group_id 
}

output "public_bastion_sg_group_vpc_id" {
    description     = "The VPC ID"
    value           = modue.complete_sg.this_security_group_vpc_id 
}

output "public_bastion_sg_group_name" {
    description     = "The name of the security"
    value           = module.complete_sg.this_security_group_name
}