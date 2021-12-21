terraform {
  required_version = ">= 0.13"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "helm" {
  kubernetes {
    host                   = module.kubernetes.auth_host
    token                  = module.kubernetes.auth_token
    cluster_ca_certificate = module.kubernetes.auth_cluster_ca_certificate
  }
}

provider "kubernetes" {
  host                   = module.kubernetes.auth_host
  token                  = module.kubernetes.auth_token
  cluster_ca_certificate = module.kubernetes.auth_cluster_ca_certificate
}

provider "kubectl" {
  load_config_file       = false
  cluster_ca_certificate = module.kubernetes.auth_cluster_ca_certificate
  host                   = module.kubernetes.auth_host
  token                  = module.kubernetes.auth_token
}

provider "null" {
}