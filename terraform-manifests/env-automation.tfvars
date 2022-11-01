#EC2
instance_type        = "t2.micro"
ami                  = "ami-06640050dc3f556bb"
region               = "us-east-1"
name                 = "EC2Demo"

#KEYPAIR
instance_keypair     = "terraform-key" 

#AWS EC2 INSTANCE LIST

instance_type_list = ["t2.micro","t2.small"]

#AWS EC2 INSTANCE TYPE MAP
instance_type_map = {
    default = {
  "test" = "t2.micro"
  "qa" = "t3.small"
  "prod" = "t3.large" 
    }
}