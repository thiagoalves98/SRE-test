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

variable "node_pool_name" {
  type        = string
  description = "nome do pool de nos"
}

variable "name" {
  type        = string
  description = "nome do cluster na Google Cloud"
}

variable "node_count" {
  default     = 3
  description = "numero de nodes do cluster"
}

variable "node_location" {
  type        = string
  description = "local dos nodes"
}

variable "project" {
  type        = string
  description = "Nome do projeto"
}