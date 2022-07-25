##################################################################################
# CONFIGURATION - added for Terraform 0.14
##################################################################################

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

##################################################################################
# PROVIDERS
##################################################################################

provider "google" {
  region = var.region
  zone   = "us-central1-c"
}

##################################################################################
# RESOURCES
##################################################################################

# NETWORKING #
module "vpc" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 4.0.1"
  project_id   = var.gcp_project_id
  network_name = "globo-primary"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = var.cidr_block
      subnet_region = "us-west1"

    }
  ]
}






