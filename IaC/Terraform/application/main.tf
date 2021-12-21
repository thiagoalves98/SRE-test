module "hello-k8s" {
  source = "../../../Terraform/helm"

  name          = var.name
  namespace     = var.namespace
  chart_version = var.chart_version
  values_contents = [
    file("../../Helm/hello-k8s/values.yaml")
  ]
}