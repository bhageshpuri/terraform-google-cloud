module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 3.2.2"

  project_id   = var.project_id
  network_name = "tf-vpc-703246"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name           = "subnet-01"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = "us-central1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "This subnet has a description"
    },
    {
      subnet_name           = "subnet-02"
      subnet_ip             = "10.10.30.0/24"
      subnet_region         = "us-central1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "This subnet has a description"
    }
  ]
}

