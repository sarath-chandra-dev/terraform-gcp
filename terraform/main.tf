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

# An example resource that does nothing.
# resource "null_resource" "example" {
#   triggers = {
#     value = "A example resource that does nothing!"
#   }
# }