provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

resource "cloudflare_zone" "main" {
  zone   = "lacantine.xyz"
  plan   = "free"
  paused = "true"
}

resource "cloudflare_record" "main_a" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  value   = "***REMOVED***"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "main_aaaa" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  value   = "2408:210:b305:a600:ba27:ebff:fe1a:550d"
  type    = "AAAA"
  proxied = false
}

resource "cloudflare_record" "caa_letsencrypt" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  data = {
    flags = "0"
    tag   = "issue"
    value = "letsencrypt.org"
  }
  type    = "CAA"
  proxied = false
}

resource "cloudflare_record" "caa_letsencrypt_wildcard" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  type    = "CAA"
  data = {
    flags = "0"
    tag   = "issuewild"
    value = "letsencrypt.org"
  }
  proxied = false
}

resource "cloudflare_record" "calibre" {
  zone_id = cloudflare_zone.main.id
  name    = "calibre"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "conference" {
  zone_id = cloudflare_zone.main.id
  name    = "conference"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "echo" {
  zone_id = cloudflare_zone.main.id
  name    = "echo"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "iot" {
  zone_id = cloudflare_zone.main.id
  name    = "iot"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "irc" {
  zone_id = cloudflare_zone.main.id
  name    = "irc"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "proxy" {
  zone_id = cloudflare_zone.main.id
  name    = "proxy"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "pubsub" {
  zone_id = cloudflare_zone.main.id
  name    = "pubsub"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "upload" {
  zone_id = cloudflare_zone.main.id
  name    = "upload"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.main.id
  name    = "www"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "xmpp" {
  zone_id = cloudflare_zone.main.id
  name    = "xmpp"
  value   = cloudflare_zone.main.zone
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "_mumble_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_mumble._tcp"
  type    = "SRV"
  data = {
    service  = "_mumble"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 64738
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_stuns_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_stuns._tcp"
  type    = "SRV"
  data = {
    service  = "_stuns"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 5349
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_stun_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_stun._tcp"
  type    = "SRV"
  data = {
    service  = "_stun"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 3478
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_stun_udp" {
  zone_id = cloudflare_zone.main.id
  name    = "_stun._udp"
  type    = "SRV"
  data = {
    service  = "_stun"
    proto    = "_udp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 3478
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_turns_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_turns._tcp"
  type    = "SRV"
  data = {
    service  = "_turns"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 5349
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_turn_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_turn._tcp"
  type    = "SRV"
  data = {
    service  = "_turn"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 3478
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_turn_udp" {
  zone_id = cloudflare_zone.main.id
  name    = "_turn._udp"
  type    = "SRV"
  data = {
    service  = "_turn"
    proto    = "_udp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 3478
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_xmpp-client_tcp_iot" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpp-client._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpp-client"
    proto    = "_tcp"
    name     = "iot"
    priority = 5
    weight   = 0
    port     = 5222
    target   = "iot-${cloudflare_zone.main.zone}"
  }
  proxied = false
}

resource "cloudflare_record" "_xmpp-client_tcp_https" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpp-client._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpp-client"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 5
    weight   = 0
    port     = 443
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_xmpp-client_tcp_default" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpp-client._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpp-client"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 10
    weight   = 0
    port     = 5222
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_xmpps-client_tcp_iot" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpps-client._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpps-client"
    proto    = "_tcp"
    name     = "iot"
    priority = 0
    weight   = 0
    port     = 5223
    target   = "iot-${cloudflare_zone.main.zone}"
  }
  proxied = false
}

resource "cloudflare_record" "_xmpps-client_tcp_https" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpps-client._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpps-client"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 0
    weight   = 0
    port     = 443
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_xmpp-server_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpp-server._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpp-server"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 5
    weight   = 0
    port     = 5269
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "_xmpps-server_tcp" {
  zone_id = cloudflare_zone.main.id
  name    = "_xmpps-server._tcp"
  type    = "SRV"
  data = {
    service  = "_xmpps-server"
    proto    = "_tcp"
    name     = cloudflare_zone.main.zone
    priority = 5
    weight   = 0
    port     = 5270
    target   = cloudflare_zone.main.zone
  }
  proxied = false
}

resource "cloudflare_record" "google_site_verification" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  value   = "google-site-verification=${var.google_site_verification}"
  type    = "TXT"
  proxied = false
}

resource "cloudflare_record" "spf" {
  zone_id = cloudflare_zone.main.id
  name    = cloudflare_zone.main.zone
  value   = "v=spf1 include:${var.isp} -all"
  type    = "TXT"
  proxied = false
}
