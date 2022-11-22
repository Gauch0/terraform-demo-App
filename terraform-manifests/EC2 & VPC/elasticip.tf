resource "aws_eip" "bastion_eip" {
  instance             = module.ec2_public.id[0]
  depends_on           = [ module.ec2_public,module.vpc ]
  vpc                  = true
  tags                 = local.common_tags
}