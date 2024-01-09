# Triggering the build 11
resource "google_storage_bucket" "bucket" {
  name     = "test-bucket-random-001122-22"
  project = "the-experience-270205"
  location = "eastus2"
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "test-bucket-random-00112323"
  location = "eastus2"
  project = "the-experience-270205"
}