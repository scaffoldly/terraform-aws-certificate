module "certificate" {
  count = length(var.domains) > 0 ? 1 : 0

  source  = "scaffoldly/certificate-stage/aws"
  version = "1.0.3"

  stage       = var.stage
  root_domain = var.root_domain
  domains     = var.domains

  providers = {
    aws.dns = aws.dns
  }
}
