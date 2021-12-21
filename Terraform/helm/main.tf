resource "helm_release" "hello-k8s" {
  name             = var.name
  repository       = "../../../Helm"
  chart            = "hello-k8s"
  version          = var.chart_version
  wait             = var.wait_install
  namespace        = var.namespace
  create_namespace = true
  values           = var.values_contents

}