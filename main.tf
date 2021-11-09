module "certificate" {
  count = length(var.domains) ? 1 : 0

  source  = "scaffoldly/certificate-stage/aws"
  version = "1.0.1"

  stage   = var.stage
  domains = var.domains

  providers = {
    aws.dns = aws.dns
  }
}
