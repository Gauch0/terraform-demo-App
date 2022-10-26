#AWS REGION
variable "region" {}

#AWS EC2 Instance Name - Ami - Type
variable "instance_type" {}
variable "ami" {}
variable "name" {}

#AWS EC2 Instance Key Pair
variable "instance_keypair" {}

#AWS EC2 Instance Type - List
variable "instance_type_list" {
  # description = "EC2 Instance Type List"
  # type = list(string)
  # default = ["t2.micro","t2.small"]
}

#AWS EC2 Instance Type - Map
variable "instance_type_map" {
  # description = "EC2 Instance Type"
  # type = map(string)
  # default = {
  #   "test" = "t2.micro"
  #   "qa"  =  "t3.small"
  #   "prod" = "t3.large"
  # }
}