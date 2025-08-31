module "sample_api" {
  source            = "../../../../modules/sample-api"
  name_prefix       = var.name_prefix
  vpc_id            = var.vpc_id
  public_subnet_ids = var.public_subnet_ids
}
