variable "cloudflare_email" {
  type        = string
  description = "CloudFlare e-mail address"
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
  default     = null
}

variable "ipv4_address" {
  type        = string
  description = "IPv4 address"
}

variable "ipv6_address" {
  type        = string
  description = "IPv6 address"
  default     = null
}
