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
  type        = map(string)
  description = "Base CIDR Block for VPC"
}

variable "vpc_subnet_count" {
  type        = map(number)
  description = "Number of subnets to create in VPC"
}

variable "instance_count" {
  type        = map(number)
  description = "Number of instances to create in VPC"
}