provider "google" {
  credentials = ""
  project      = "asia-project-wayde191"
  region       = "asia-northeast1"
}

resource "google_container_cluster" "primary" {
  name         = "second-asia-cluster"
  zone         = "asia-northeast1-a"
  initial_node_count = 1

//  additional_zones = [
//    "asia-east1-a",
//    "asia-southeast1-a",
//    "asia-northeast1-a",
//  ]

  logging_service = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  node_config {
    machine_type = "n1-standard-2"
  }
}

resource "google_container_cluster" "east" {
  name         = "east-asia-cluster"
  zone         = "asia-east1-a"
  initial_node_count = 1

  logging_service = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  node_config {
    machine_type = "n1-standard-2"
  }
}

resource "google_container_cluster" "south" {
  name         = "south-asia-cluster"
  zone         = "asia-southeast1-a"
  initial_node_count = 1

  logging_service = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  node_config {
    machine_type = "n1-standard-2"
  }
}
