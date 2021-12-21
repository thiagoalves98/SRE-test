output "region" {
  value       = var.region
  description = "regiao do cluster na Google Cloud"
}

output "project_id" {
  value       = var.project_id
  description = "ID do projeto na Google Cloud"
}

output "kubernetes_cluster_name" {
  value       = var.name
  description = "nome do cluster na Google Cloud"
}

output "project" {
  value       = var.project
  description = "nome do project na Google Cloud"
}

output "node_location" {
  value       = var.node_location
  description = "nome do node_location na Google Cloud"
}

output "node_pool_name" {
  value       = var.node_pool_name
  description = "nome do node_pool_name na Google Cloud"
}