provider "google" {
  credentials = ""
  project      = "asia-project-wayde191"
  region       = "asia-northeast1"
}

resource "google_container_cluster" "primary" {
  name         = "second-asia-cluster"
  zone         = "asia-northeast1-a"
  initial_node_count = 1

  additional_zones = [
    "asia-northeast1-b",
    "asia-northeast1-c",
  ]

  logging_service = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  node_config {
    machine_type = "n1-standard-2"
  }
}
