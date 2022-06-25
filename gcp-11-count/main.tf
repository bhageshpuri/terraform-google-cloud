terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  project = var.project_id
}

data "google_compute_zones" "available" {
}


resource "google_compute_instance" "web-servers" {
  count        = var.instance_count
  name         = "tf-instance-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"

  metadata_startup_script   = <<-EOT
        #!/bin/bash
            EOT
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"

  }
}

