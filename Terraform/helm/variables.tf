variable "chart_version" {
  type        = string
  description = "Hello-k8s Chart version"
}

variable "namespace" {
  type        = string
  description = "Hello-k8s namespace"
  default     = "hello-kubernetes"
}

variable "name" {
  type        = string
  description = "Name release name"
  default     = "hello-kubernetes"
}

variable "values_contents" {
  type        = list(string)
  description = "Hello-k8s value contents"
  default     = []
}

variable "wait_install" {
  type        = bool
  description = "Waiting all resources to be ready"
  default     = true
}