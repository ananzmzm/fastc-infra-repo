module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-07df77e61e9021393"

  private_subnets = ["subnet-05a44a4e41de4df8c", "subnet-0a28a54b0932a4777"]
  public_subnets  = ["subnet-05d0b98ca225f3b7c", "subnet-005dea238dfdc1c90"]
}