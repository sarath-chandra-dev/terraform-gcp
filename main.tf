terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.57.0"
    }
  }
  backend "gcs" {
    
  }
}

provider "google" {
  project = "the-experience-270205"
}

resource "google_storage_bucket" "bucket" {
  name     = "test-bucket-random-001122-221"
  location = "europe-west2"
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "test-bucket-random-001123231"
  location = "europe-west2"
}