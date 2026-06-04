output "vpc_id" {
  value       = module.networking.vpc_id
  description = "The ID of the VPC network"
}

output "vpc_name" {
  value       = module.networking.vpc_name
  description = "The name of the VPC network"
}

output "public_subnet_id" {
  value       = module.networking.public_subnet_id
  description = "The ID of the public subnet"
}

output "public_subnet_name" {
  value       = module.networking.public_subnet_name
  description = "The name of the public subnet"
}

output "firewall_rules" {
  value = {
    ssh   = module.networking.firewall_ssh_id
    http  = module.networking.firewall_http_id
    https = module.networking.firewall_https_id
  }
  description = "IDs of firewall rules"
}
