module "network" {
  source = "../../../modules/network"

  name_prefix         = "dev"
  region              = var.aws_region
  cidr_block          = "10.10.0.0/16"
  public_subnet_cidrs = ["10.10.0.0/24", "10.10.1.0/24"]
  az_suffixes         = ["a", "c"]
}
