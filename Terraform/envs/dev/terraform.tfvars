region          = "ap-south-1"
cluster_name    = "dev-eks"
cluster_version = "1.29"

vpc_cidr = "10.20.0.0/16"
azs = ["ap-south-1a","ap-south-1b","ap-south-1c"]
private_subnets = ["10.20.1.0/24","10.20.2.0/24","10.20.3.0/24"]
public_subnets  = ["10.20.101.0/24","10.20.102.0/24","10.20.103.0/24"]

node_groups = {
  apps = {
    instance_types = ["t3.small"]
    desired_size   = 2
    min_size       = 2
    max_size       = 4
    disk_size      = 50
    labels         = { role = "apps" }
    taints         = []
  }
}


# --- Cluster Autoscaler (required to avoid coalescelist error) ---
cluster_autoscaler_cluster_ids   = []
cluster_autoscaler_cluster_names = ["dev-eks"]