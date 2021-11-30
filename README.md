[![Maintained by Scaffoldly](https://img.shields.io/badge/maintained%20by-scaffoldly-blueviolet)](https://github.com/scaffoldly)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/scaffoldly/CHANGEME)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D1.0.4-blue.svg)

## Description

CHANGEME

## Usage

```hcl
module "CHANGME" {

}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 1.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_certificate"></a> [certificate](#module\_certificate) | scaffoldly/certificate-stage/aws | 1.0.6 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_root_domain"></a> [root\_domain](#input\_root\_domain) | The root domain | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | The stage (e.g. live, nonlive) | `string` | n/a | yes |
| <a name="input_subdomain_suffix"></a> [subdomain\_suffix](#input\_subdomain\_suffix) | The (optional) suffix to append to each subdomain | `string` | `""` | no |
| <a name="input_subdomains"></a> [subdomains](#input\_subdomains) | The subdomains for which to create a certificate on var.root\_domain | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | The certificate ARN |
| <a name="output_domains"></a> [domains](#output\_domains) | List of all domains for the certificate |
| <a name="output_root_domain"></a> [root\_domain](#output\_root\_domain) | Re-output of var.root\_domain |
| <a name="output_stage"></a> [stage](#output\_stage) | Re-output of var.stage |
| <a name="output_subdomain_suffix"></a> [subdomain\_suffix](#output\_subdomain\_suffix) | Re-output of var.subdomain\_suffix |
<!-- END_TF_DOCS -->
