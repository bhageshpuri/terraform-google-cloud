resource "google_storage_bucket" "storage-bucket" {
  name          = "tf-bucket-1937771-11"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "storage-bucket2" {
  name          = "tf-bucket-1937771-22"
  location      = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}

