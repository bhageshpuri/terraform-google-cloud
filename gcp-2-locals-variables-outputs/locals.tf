locals {
  compute_name = "${var.gcp_project_id}-${var.Company}"
  common_tags = {
    company_name = var.Company
    zone         = "us-central1-a"
  }
}


