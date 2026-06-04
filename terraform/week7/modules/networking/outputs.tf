output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "The ID of the VPC network"
}

output "vpc_name" {
  value       = google_compute_network.vpc.name
  description = "The name of the VPC network"
}

output "public_subnet_id" {
  value       = google_compute_subnetwork.public_subnet.id
  description = "The ID of the public subnet"
}

output "public_subnet_name" {
  value       = google_compute_subnetwork.public_subnet.name
  description = "The name of the public subnet"
}

output "firewall_ssh_id" {
  value       = google_compute_firewall.allow_ssh.id
  description = "The ID of the SSH firewall rule"
}

output "firewall_http_id" {
  value       = google_compute_firewall.allow_http.id
  description = "The ID of the HTTP firewall rule"
}

output "firewall_https_id" {
  value       = google_compute_firewall.allow_https.id
  description = "The ID of the HTTPS firewall rule"
}
