# terraform-aws-eks-metrics-server

[![Lint Status](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-eks-metrics-server)](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/blob/master/LICENSE)


Terraform module for deploying kubernetes [metrics-server](https://github.com/kubernetes-sigs/metrics-server), enabling K8S to colects CPU and Memory metrics from cluster and use HPA on applications.

## Usage

```
module "external_secrets" {
  source = "git::https://github.com/DNXLabs/terraform-aws-eks-metrics-server.git"

  enabled = true

  cluster_name                     = module.eks_cluster.cluster_id
  cluster_identity_oidc_issuer     = module.eks_cluster.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks_cluster.oidc_provider_arn
  secrets_aws_region               = data.aws_region.current.name
}
```

<!--- BEGIN_TF_DOCS --->


<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-eks-metrics-server/blob/master/LICENSE) for full details.
