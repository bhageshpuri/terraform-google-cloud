resource "google_compute_instance" "vm_instance" {
  project      = var.gcp_project_id
  name         = local.compute_name
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  labels       = local.common_tags
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