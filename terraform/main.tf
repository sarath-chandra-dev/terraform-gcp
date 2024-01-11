# The configuration for the `remote` backend.
terraform {
  backend "gcs" {
    bucket = "bucket-tf-state-storage-2023"
    prefix = "prod"

  }
}

provider "google" {
  project = var.project
  region = var.region
}

resource "google_storage_bucket" "raw" {
  project = var.project
  name = "${var.data-project}-raw"
  force_destroy = false
  uniform_bucket_level_access = true
  location = var.region
  labels = local.labels
}