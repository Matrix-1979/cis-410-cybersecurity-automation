# Week 7 Activity 2 — Networking Module Outputs
# Exposes VPC, subnet, and firewall rule IDs for the root module

output "vpc_id" {
  description = "VPC network ID (self_link)"
  value       = google_compute_network.vpc.id
}

output "vpc_name" {
  description = "VPC network name"
  value       = google_compute_network.vpc.name
}

output "public_subnet_id" {
  description = "Public subnet ID (self_link)"
  value       = google_compute_subnetwork.public_subnet.id
}

output "public_subnet_name" {
  description = "Public subnet name"
  value       = google_compute_subnetwork.public_subnet.name
}

output "firewall_rules" {
  description = "Firewall rule IDs"
  value = {
    ssh   = google_compute_firewall.allow_ssh.id
    http  = google_compute_firewall.allow_http.id
    https = google_compute_firewall.allow_https.id
  }
}
