module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.0"

  name = "public-bastion-sg"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id


}