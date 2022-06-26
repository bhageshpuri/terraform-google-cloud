resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = var.zone
  metadata_startup_script = templatefile("${path.module}/startup_script.tpl",
    {
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