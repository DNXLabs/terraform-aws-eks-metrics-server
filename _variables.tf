variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "helm_chart_name" {
  type        = string
  default     = "metrics-server"
  description = "Metrics Server Helm chart name to be installed"
}

variable "helm_chart_release_name" {
  type        = string
  default     = "metrics-server"
  description = "Helm release name"
}

variable "helm_chart_version" {
  type        = string
  default     = "2.11.2"
  description = "Metrics Server Helm chart version."
}

variable "helm_chart_repo" {
  type        = string
  default     = "https://charts.helm.sh/stable/"
  description = "Metrics Server repository name."
}

variable "create_namespace" {
  type        = bool
  default     = false
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "Kubernetes namespace to deploy Metrics Server Helm chart."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values."
}