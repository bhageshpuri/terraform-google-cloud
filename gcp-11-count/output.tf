output "host-name" {
  value = google_compute_instance.web-servers[0].name
}

output "all-servers" {
  value = google_compute_instance.web-servers[*].name
}
