terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  project = var.gcp_project_id
  region  = "us-east1"
  zone    = "us-east1-b"
}
