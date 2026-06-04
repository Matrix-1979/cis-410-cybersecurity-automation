# Week 7 Activity 2 — Root Module
# Configures Terraform remote backend and calls the networking module

terraform {
  required_version = ">= 1.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  # Remote backend: store state in GCS bucket from Week 6
  backend "gcs" {
    bucket = "cis410-langombo-498119-tfstate"
    prefix = "week7"
  }
}

provider "google" {
  project = var.project_id
  region  = "us-central1"
}

# Call the networking child module
module "networking" {
  source = "./modules/networking"

  project_id = var.project_id
  my_ip_cidr = var.my_ip_cidr
}
