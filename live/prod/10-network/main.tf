module "network" {
  source = "../../../modules/network"

  name_prefix         = var.name_prefix
  region              = var.aws_region
  cidr_block          = var.cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
  az_suffixes         = var.az_suffixes
}

