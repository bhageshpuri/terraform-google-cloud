variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "project_id" {
  default = "helical-ascent-350416"
}

variable "company" {
  type        = string
  description = "Company Name"
  default     = "colgate"

}


variable "naming_prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = "globoweb"
}
