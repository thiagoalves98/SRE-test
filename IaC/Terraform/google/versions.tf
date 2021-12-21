terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=3.40"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">=1.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=1.13.3"

    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }

  }
  required_version = ">= 0.14"
}