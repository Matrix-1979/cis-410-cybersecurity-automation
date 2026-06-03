# Week 6 Terraform Outputs

output "bucket_name" {
  description = "Name of the GCS bucket"
  value       = google_storage_bucket.tf_state.name
}

output "bucket_self_link" {
  description = "Self link of the GCS bucket"
  value       = google_storage_bucket.tf_state.self_link
}

output "bucket_location" {
  description = "Location of the GCS bucket"
  value       = google_storage_bucket.tf_state.location
}
