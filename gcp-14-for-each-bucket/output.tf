output "bucket-name1" {
  value = google_storage_bucket.bucket["bucket1"].name
}
output "bucket-name2" {
  value = google_storage_bucket.bucket["bucket2"].name
}