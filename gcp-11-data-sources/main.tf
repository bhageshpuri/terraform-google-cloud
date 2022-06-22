terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region

  zone = var.zone
}

module "instances" {

  source = "./modules/instances"

}

module "storage" {
  source = "./modules/storage"
}

module "vpc" {
  source = "./modules/vpc"
}