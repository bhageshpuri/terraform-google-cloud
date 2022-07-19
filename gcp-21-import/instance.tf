data "google_compute_zones" "available" {
}

resource "google_compute_instance" "vm_instances" {
  count        = var.instance_count
  name         = "terraform-instance${count.index}"
  machine_type = "n1-standard-2"
  zone = slice(data.google_compute_zones.available.names,0,2)

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  
  network_interface {
    subnetwork = google_compute_subnetwork.terraform-network-subnets[(count.index % var.vpc_subnet_count)].self_link
    access_config {
    }
  }
}