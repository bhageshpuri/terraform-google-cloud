resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "terraform-network-subnet-us" {
  name          = "terraform-network-subnet-us"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.130.0.0/20"
}