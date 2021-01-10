resource "helm_release" "metrics_server" {
  depends_on = [var.mod_dependency, kubernetes_namespace.metrics_server]
  count      = var.enabled ? 1 : 0
  name       = var.helm_chart_name
  chart      = var.helm_chart_release_name
  repository = var.helm_chart_repo
  version    = var.helm_chart_version
  namespace  = var.namespace

  set {
    name  = "clusterName"
    value = var.cluster_name
  }

  # set {
  #   name  = "serviceAccount.name"
  #   value = var.service_account_name
  # }

}