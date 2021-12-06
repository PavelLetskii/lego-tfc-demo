data "aws_eks_cluster" "eks" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"

  cluster_version = var.cluster_version
  cluster_name    = var.cluster_name
  vpc_id          = data.terraform_remote_state.vpc.outputs.vpc_id
  subnets         = data.terraform_remote_state.vpc.outputs.private_subnet_ids

  worker_groups = [
    {
      instance_type        = var.instance_type
      asg_max_size         = var.asg_max_size
      asg_desired_capacity = var.asg_desired_capacity
    }
  ]
}
