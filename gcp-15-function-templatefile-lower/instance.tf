resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = var.zone
    depends_on = [google_storage_bucket.storage_bucket]

  metadata_startup_script = templatefile("${path.module}/startup_script.tpl", {
    bucket_name = google_storage_bucket.storage_bucket.id
  })
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}