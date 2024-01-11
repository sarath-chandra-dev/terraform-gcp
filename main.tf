# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "4.57.0"
#     }
#   }
#   backend "gcs" {
    
#   }
# }

# provider "google" {
#   project = "the-experience-270205"
# }

# resource "google_storage_bucket" "bucket" {
#   name     = "test-bucket-random-001122-221"
#   location = "europe-west2"
# }

# resource "google_storage_bucket" "gcs_bucket" {
#   name     = "test-bucket-random-001123231"
#   location = "europe-west2"
# }

# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "Sarath-GCP"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "gcp-api-driven-workflow"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}