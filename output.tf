output "stage" {
  value       = var.stage
  description = "Re-output of var.stage"
}

output "certificate_arn" {
  value       = length(var.domains) > 0 ? join("", module.certificate.*.certificate_arn) : null
  description = "The certificate ARN"
}

output "domains" {
  value       = var.domains
  description = "Re-output of var.domains"
}
