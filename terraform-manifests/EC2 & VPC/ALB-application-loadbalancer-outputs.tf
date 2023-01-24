output "this_alb_arn" {
  description = "value of the ALB ARN"
  value = module.alb.this_alb_arn
}

output "this_alb_id" {
  description = "value of the ALB ID"
  value = module.alb.this_alb_id
}

output "this_alb_name" {
  description = "value of the ALB name"
  value = module.alb.this_alb_name
}

output "this_alb_dns_name" {
  description = "value of the ALB DNS name"
  value = module.alb.this_alb_dns_name
}

output "target_group_name" {
  description = "value of the ALB target group name"
  value = module.alb.target_group_name
}

output "target_group_attachments" {
  description = "value of the ALB target group attachments"
  value = module.alb.target_group_attachments
}

output "this_alb_arn_suffix" {
  description = "value of the ALB ARN suffix"
  value = module.alb.this_alb_arn_suffix
}
