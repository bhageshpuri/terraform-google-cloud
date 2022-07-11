resource "google_compute_instance" "vm_instances" {
  count        = var.instance_count[terraform.workspace]
  name         = "${terraform.workspace}-${count.index}"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.terraform-network-subnets[(count.index % var.vpc_subnet_count[terraform.workspace])].self_link
    access_config {
    }
  }
}