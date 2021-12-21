terraform {
  required_version = ">= 0.13"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project
  region  = var.region
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  cluster_ca_certificate = module.kubernetes.auth_cluster_ca_certificate
  host                   = module.kubernetes.auth_host
  token                  = module.kubernetes.auth_token
}

provider "kubectl" {
  load_config_file       = false
  cluster_ca_certificate = module.kubernetes.auth_cluster_ca_certificate
  host                   = module.kubernetes.auth_host
  token                  = module.kubernetes.auth_token
}

provider "null" {
}