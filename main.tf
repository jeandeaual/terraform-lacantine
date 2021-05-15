provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_zone" "main" {
  zone = "lacantine.xyz"
  plan = "free"
  paused = "true"
}

resource "cloudflare_record" "calibre" {
  zone_id = cloudflare_zone.main.id
  name    = "calibre"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "google_site_verification" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  value   = "google-site-verification=${var.google_site_verification}"
  type    = "TXT"
  proxied = false
}
