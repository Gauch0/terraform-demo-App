# AWS EC2 Instance Key Pair
variable "instance_keypair" {
    description         = "EC2 Instance Key Pair"
    type                = string
    default             = "terraform-key"
}

# AWS EC2 Instance Type
variable "instance_type" {
    description         = "EC2 instance Type"
    type                = string
    default             = "t3.micro"
}

#AWS EC2 Instance count
variable "private_instance_count" {
    description         = "EC2 Instance Count"
    type                = string
    default             = 1
}

