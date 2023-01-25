data "aws_route53_zone" "mydomain" {
  name         = "cmcloudlab785.info"
}

output "mydomain_id" {
  value = data.aws_route53_zone.mydomain.zone_id
}
