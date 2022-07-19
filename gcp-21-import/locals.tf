#Random ID for unique naming
resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

locals {
  common_tags = {
    company = var.company
    project = "${var.company}-${var.gcp_project_id}"
  }

  name_prefix = "${var.naming_prefix}-dev"
}
