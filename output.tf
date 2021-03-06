output "stage" {
  value       = var.stage
  description = "Re-output of var.stage"
}

output "certificate_arn" {
  value       = length(var.subdomains) > 0 ? join("", module.certificate.*.certificate_arn) : null
  description = "The certificate ARN"
}

output "domains" {
  value       = length(var.subdomains) > 0 ? flatten(module.certificate.*.domains) : []
  description = "List of all domains for the certificate"
}

output "root_domain" {
  value       = var.root_domain
  description = "Re-output of var.root_domain"
}

output "subdomain_suffix" {
  value       = var.subdomain_suffix
  description = "Re-output of var.subdomain_suffix"
}
