##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  default = "us-central1"
}

variable "gcp_project_id" {
  type        = string
  description = "gcp project ID"
  sensitive   = "true"
  default     = "helical-ascent-350416"
}

variable "cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  type        = number
  description = "Number of subnets to create in VPC"
  default     = 2
}


