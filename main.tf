resource "cloudflare_record" "default" {
  count  = length(var.cloudflare_zones)
  domain = lookup(var.cloudflare_zones[count.index], "zone")
  name   = "@"
  value  = lookup(var.cloudflare_zones[count.index], "site_verification")
  type   = "TXT"
}

resource "aws_route53_record" "default" {
  count   = length(var.aws_route53_domains)
  zone_id = lookup(var.aws_route53_domains[count.index], "zone_id")
  name    = lookup(var.aws_route53_domains[count.index], "domain")
  type    = "TXT"
  ttl     = "300"
  records = lookup(var.aws_route53_domains[count.index], "site_verification")
}
