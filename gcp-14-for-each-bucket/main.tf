terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region

  zone = var.zone
}
resource "google_storage_bucket" "bucket" {
  for_each = {
    bucket1 = "us"
    bucket2 = "eu"

  }
  name     = "bucket-bhagesh-${each.key}"
  location = each.value
}


