# The configuration for the `remote` backend.
terraform {
  backend "gcs" {
    bucket = "bucket-tf-state-storage-2023"
    prefix = "prod"

  }
}

provider "google" {
  project = "the-experience-270205"
  region = "us-central1"
}

resource "google_storage_bucket" "raw" {
  project = var.project
  name = "demo-bucket-terraform-2023"
  force_destroy = false
  uniform_bucket_level_access = true
  location = var.region
  labels = local.labels
}