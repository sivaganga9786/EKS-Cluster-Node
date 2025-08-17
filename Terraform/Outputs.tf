output "cluster_name"        { value = module.eks.cluster_name }
output "cluster_endpoint"    { value = module.eks.cluster_endpoint }
output "oidc_provider_arn"   { value = module.eks.oidc_provider_arn }
#output "node_group_names"    { value = [for ng in module.eks.eks_managed_node_groups : ng.node_group_name] }
output "node_group_names" {
  value = [for ng in keys(module.eks.eks_managed_node_groups) : ng]
}
output "managed_node_groups_info" {
  value = module.eks.managed_node_groups
}
