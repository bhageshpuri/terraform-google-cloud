##################################################################################
# TERRAFORM CONFIG
##################################################################################

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}
##################################################################################
# PROVIDERS
##################################################################################

provider "google" {
  project = "helical-ascent-350416"
}

