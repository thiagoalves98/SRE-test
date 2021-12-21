variable "project_id" {
  type        = string
  description = "ID do projeto na Google Cloud."
}

variable "region" {
  type        = string
  description = "Regiao principal a ser utilizada na Google Cloud."
}

variable "zone" {
  type        = string
  description = "Zona a ser utilizada na Google Cloud."
  default     = "us-east1-b"
}

variable "name" {
  type        = string
  description = "nomde do cluster"
}

variable "node_oauth_scopes" {
  type        = list(string)
  description = "Nodes OAuth Scopes"
  default = [
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
  ]
}

variable "node_pool_name" {
  type        = string
  description = "nome do pool de nós"
}

variable "node_count" {
  default     = 1
  description = "numero de nodes"
}