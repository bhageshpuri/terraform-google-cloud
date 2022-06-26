resource "google_storage_bucket" "storage_bucket" {
  name                        = local.bucket_name
  project = var.project_id
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = false
}

resource "google_storage_bucket_object" "website" {
  for_each = {
    website = "/website/index.html"
    logo    = "/website/Globo_logo_Vert.png"
  }
  bucket = google_storage_bucket.storage_bucket.id
  source = ".${each.value}"
  name = ".${each.value}"

}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.storage_bucket.name
  role   = "OWNER"
  entity = "allUsers"
}

resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.storage_bucket.name
  role = "roles/storage.admin"
  members = [
    "allUsers",
  ]
  }