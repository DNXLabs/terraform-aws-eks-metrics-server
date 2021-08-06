# terraform-aws-eks-metrics-server

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-metrics-server)](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/blob/master/LICENSE)


Terraform module for deploying Kubernetes [Metrics Server](https://github.com/kubernetes-sigs/metrics-server), Metrics Server collects resource metrics from Kubelets and exposes them in Kubernetes apiserver through [Metrics API](https://github.com/kubernetes/metrics) for use by [Horizontal Pod Autoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) and [Vertical Pod Autoscaler](https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler). Metrics API can also be accessed by `kubectl top`, making it easier to debug autoscaling pipelines.


Metrics Server offers:

- A single deployment that works on most clusters (see [Requirements](https://github.com/kubernetes-sigs/metrics-server#requirements))
- Scalable support up to 5,000 node clusters
- Resource efficiency: Metrics Server uses 1m core of CPU and 3 MB of memory per node

## Usage

```
module "metrics_server" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-metrics-server.git"

  enabled = true
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13, < 4.0 |
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 1.0, < 3.0 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `false` | no |
| enabled | Variable indicating whether deployment is enabled. | `bool` | `true` | no |
| helm\_chart\_name | Metrics Server Helm chart name to be installed | `string` | `"metrics-server"` | no |
| helm\_chart\_release\_name | Helm release name | `string` | `"metrics-server"` | no |
| helm\_chart\_repo | Metrics Server repository name. | `string` | `"https://charts.bitnami.com/bitnami"` | no |
| helm\_chart\_version | Metrics Server Helm chart version. | `string` | `"5.9.2"` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| namespace | Kubernetes namespace to deploy Metrics Server Helm chart. | `string` | `"kube-system"` | no |
| settings | Additional settings which will be passed to the Helm chart values. | `map` | `{}` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/blob/master/LICENSE) for full details.
