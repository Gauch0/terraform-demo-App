module "acm_cert" {
  source  = "terraform-aws-modules/acm/aws"
  version = "2.0.0"
  domain_name = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method = "DNS"
  tags = local.common_tags
}
  