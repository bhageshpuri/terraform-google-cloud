resource "google_compute_instance" "vm_instance" {
  project      = "helical-ascent-350416"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  provisioner "local-exec" {
    command = "echo ${google_compute_instance.vm_instance.name}:  ${google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip} >> ip_address.txt"
  }
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

  