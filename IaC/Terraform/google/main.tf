module "kubernetes" {
  source = "../../../Terraform/google"

  name       = var.name
  project_id = var.project_id
  region     = var.region

  node_pool_name = var.node_pool_name
  node_count     = 1

}