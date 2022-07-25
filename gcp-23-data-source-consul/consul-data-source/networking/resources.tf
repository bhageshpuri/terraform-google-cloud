##################################################################################
# CONFIGURATION - added for Terraform 0.14
##################################################################################

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    consul = {
      source  = "hashicorp/consul"
      version = "~>2.0"
    }
  }
}

##################################################################################
# PROVIDERS
##################################################################################

provider "google" {
  region     = var.region
  zone       = "us-central1-c"
}

provider "consul" {
  address    = "${var.consul_address}:${var.consul_port}"
  datacenter = var.consul_datacenter
}

##################################################################################
# DATA
##################################################################################


data "consul_keys" "networking" {
  key {
    name = "networking"
    path = "networking/configuration/globo-primary/net_info"
  }
}

##################################################################################
# LOCALS
##################################################################################

locals {
  cidr_block   = jsondecode(data.consul_keys.networking.var.networking)["cidr_block"]
  subnet_count = jsondecode(data.consul_keys.networking.var.networking)["subnet_count"]
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
      subnet_ip     = local.cidr_block
      subnet_region = "us-west1"
    }
  ]


}






