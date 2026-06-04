# Week 7 Activity 2 — Networking Module Variables
# Inputs that the module accepts from the root module

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "my_ip_cidr" {
  description = "Your public IP in CIDR notation (e.g., 192.168.12.149/32)"
  type        = string
}
