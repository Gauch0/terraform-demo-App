# This is a Terraform module that creates a security group for a load balancer.
# It is used in the main.tf file.

module "loadbalancer_sg" {
  source                = "terraform-aws-modules/security-group/aws"
  version               = "3.18.0"
  name                  = "${local.name}loadbalancer-private-sg"
  description           = "Security Group with HTTP &  open for entire Internet (IPv4 CIDR), egress ports are all world open"
  vpc_id                = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules         = ["http-80-tcp"]
  ingress_cidr_blocks   = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules          = ["all-all"]
  tags                  = local.common_tags
}
