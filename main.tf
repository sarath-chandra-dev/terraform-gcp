# Configure the backend to use the Terraform Cloud remote backend.
terraform {
  cloud {
    organization = "Sarath-GCP"

    workspaces {
      name = "gcp-api-driven-workflow"
    }
  }
}

resource "google_storage_bucket" "bucket" {
  name     = "test-bucket-random-001122-221"
  location = "europe-west2"
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "test-bucket-random-001123231"
  location = "europe-west2"
}