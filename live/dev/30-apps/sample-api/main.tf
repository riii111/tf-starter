data "terraform_remote_state" "network" {
  count   = var.enable_remote_state ? 1 : 0
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.remote_state_key
    region = var.remote_state_region
  }
}

locals {
  resolved_vpc_id            = var.enable_remote_state ? data.terraform_remote_state.network[0].outputs.vpc_id : var.vpc_id
  resolved_public_subnet_ids = var.enable_remote_state ? data.terraform_remote_state.network[0].outputs.public_subnet_ids : var.public_subnet_ids
}

module "sample_api" {
  source            = "../../../../modules/sample-api"
  name_prefix       = var.name_prefix
  vpc_id            = local.resolved_vpc_id
  public_subnet_ids = local.resolved_public_subnet_ids
}
