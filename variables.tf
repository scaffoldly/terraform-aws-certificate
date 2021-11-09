variable "stage" {
  type        = string
  description = "The stage (e.g. live, nonlive)"
}

variable "domains" {
  type        = list(string)
  description = "The domains for which to create a certificate"
  default     = []
}
