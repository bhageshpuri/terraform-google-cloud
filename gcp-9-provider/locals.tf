resource "random_integer" "random" {
  min = 1
  max = 100000
}

locals {
  bucket_name = "bucket-${random_integer.random.result}"
}