resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "terraform-network-subnets" {
  count         = var.vpc_subnet_count
  name          = "terraform-network-subnet-${count.index}"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = cidrsubnet(var.vpc_cidr_block, 8, count.index)
}