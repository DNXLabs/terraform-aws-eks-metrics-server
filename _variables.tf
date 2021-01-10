variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled."
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
}


variable "cluster_identity_oidc_issuer" {
  type        = string
  description = "The OIDC Identity issuer for the cluster."
}

variable "cluster_identity_oidc_issuer_arn" {
  type        = string
  description = "The OIDC Identity issuer ARN for the cluster that can be used to associate IAM roles with a service account."
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

# variable "service_account_name" {
#   type        = string
#   default     = "metrics_service"
#   description = "Metrics Server service account name."
# }

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "worker_iam_role_name" {
  type        = string
  description = "IAM role name for EKS worker groups."
}