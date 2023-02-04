provider "google" {
  project = "absolute-broker-374420"
  region  = "us-central1"
}

resource "google_compute_instance" "example" {
  name         = "tf-example"
  machine_type = "f1-micro"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "default"
  }
}