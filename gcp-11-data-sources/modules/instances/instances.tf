data "google_compute_zones" "available" {
}


resource "google_compute_instance" "tf-instance-1" {
  count = length(data.google_compute_zones.available.names)
  name         = "tf-instance-1"
  machine_type = "n1-standard-1"
  #zone         = var.zone
    zone               = data.google_compute_zones.available.names[count.index]

  metadata_startup_script = <<-EOT
        #!/bin/bash
            EOT
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

     network_interface {
 network = "tf-vpc-703246"
    subnetwork = "subnet-01"

  }
}

resource "google_compute_instance" "tf-instance-2" {
    count = length(data.google_compute_zones.available.names)

  name         = "tf-instance-2"
  machine_type = "n1-standard-1"
  #zone         = var.zone
    zone               = data.google_compute_zones.available.names[count.index]

  metadata_startup_script = <<-EOT
        #!/bin/bash
            EOT
  allow_stopping_for_update = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

     network_interface {
 network = "tf-vpc-703246"
    subnetwork = "subnet-02"

  }
}
