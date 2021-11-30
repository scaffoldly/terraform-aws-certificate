module "certificate" {
  count = length(var.subdomains) > 0 ? 1 : 0

  source  = "scaffoldly/certificate-stage/aws"
  version = "1.0.6"

  stage            = var.stage
  root_domain      = var.root_domain
  subdomains       = var.subdomains
  subdomain_suffix = var.subdomain_suffix

  providers = {
    aws.dns = aws.dns
  }
}
