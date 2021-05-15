variable "cloudflare_email" {
  type        = string
  description = "CloudFlare email"
}

variable "cloudflare_api_key" {
  type        = string
  description = "CloudFlare API key"
}

variable "google_site_verification" {
  type        = string
  description = "Google site verification TXT token"
}

variable "isp" {
  type        = string
  description = "ISP used in the SPF record"
  default     = "***REMOVED***"
}
