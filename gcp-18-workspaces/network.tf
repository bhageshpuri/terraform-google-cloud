resource "google_compute_network" "vpc_network" {
  name                    = "network-${terraform.workspace}"
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "terraform-network-subnets" {
  count   = var.vpc_subnet_count[terraform.workspace]
  name    = "subnet-${terraform.workspace}-${count.index}"
  region  = "us-east1"
  network = google_compute_network.vpc_network.self_link
  ip_cidr_range = cidrsubnet(var.vpc_cidr_block[terraform.workspace], 8, count.index)

}