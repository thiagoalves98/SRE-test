resource "google_compute_network" "vpc" {
  name                    = var.project_id
  project                 = var.project_id
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.project_id
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.75.0.0/24"
}

resource "google_container_cluster" "cluster" {

  name     = var.name
  project  = var.project_id
  location = var.region

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

}

resource "google_container_node_pool" "nodes" {

  name       = var.node_pool_name
  location   = var.region
  cluster    = var.name
  node_count = var.node_count
  project    = var.project_id

  node_config {
    oauth_scopes = var.node_oauth_scopes
    machine_type = "n1-standard-1"
    tags         = ["gke-nodes", var.project_id]
  }

  depends_on = [
    google_container_cluster.cluster
  ]
}