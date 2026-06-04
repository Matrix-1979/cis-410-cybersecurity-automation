# Week 7 Activity 2 — Root Module Outputs
# Surfaces key outputs from the networking child module

output "vpc_id" {
  description = "VPC network ID"
  value       = module.networking.vpc_id
}

output "vpc_name" {
  description = "VPC network name"
  value       = module.networking.vpc_name
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = module.networking.public_subnet_id
}

output "public_subnet_name" {
  description = "Public subnet name"
  value       = module.networking.public_subnet_name
}

output "firewall_rules" {
  description = "IDs of created firewall rules"
  value       = module.networking.firewall_rules
}
# terraform/week7/outputs.tf

output "vpc_name" {
  value = module.networking.vpc_name
}

output "vpc_id" {
  value = module.networking.vpc_id
}

output "subnet_name" {
  value = module.networking.subnet_name
}
Save the file:
