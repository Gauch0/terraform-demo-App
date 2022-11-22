# AWS EC2 INSTANCE Terraform Outputs
# Public EC2 Instances - Bastion Host

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids" {
    description = "List of IDs of Instances"
    value = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
    description = "List of public IP addresses assigned to the instances"
    value = module.ec2_public.public_ip
}

output "ec2_private_instance_ids" {
    description = "List of IDs of intances"
    value = [for ec2private in module.ec2_private: ec2private.id]
}

output "ec2_private_ip" {
    description = "List of private IP addresses assigned to the instances"
    value = [for ec2private in module.ec2_private: ec2private.private_ip]
}