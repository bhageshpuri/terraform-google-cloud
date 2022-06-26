variable "gcp_project_id" {
  type        = string
  description = "gcp project ID"
  sensitive   = "true"
}

variable "Company" {
  type        = string
  description = "Company Name"
  default     = "google"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet_count" {
  type        = number
  description = "Number of subnets to create in VPC"
  default     = 2
}

variable "instance_count" {
  type        = number
  description = "Number of instances to create in VPC"
  default     = 4
}