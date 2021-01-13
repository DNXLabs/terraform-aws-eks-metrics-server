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
module "external_secrets" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-metrics-server.git"

  enabled = true
}
```

<!--- BEGIN_TF_DOCS --->


<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/blob/master/LICENSE) for full details.
