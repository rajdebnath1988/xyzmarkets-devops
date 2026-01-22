provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "xyzmarkets-dev"
  cluster_version = "1.29"

  vpc_id = "vpc-01a99192cfa2e7068"

  subnet_ids = [
    "subnet-0f711a91b03ddbcbf",
    "subnet-087fe5c36329b376e",
    "subnet-06bfdea8935a58af2"
  ]

  eks_managed_node_groups = {
    dev_nodes = {
      desired_size   = 1
      min_size       = 1
      max_size       = 2

      instance_types = ["t3.medium"] # Cost-optimized
      capacity_type  = "ON_DEMAND"
    }
  }
}
