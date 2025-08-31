variable "aws_region" {
  description = "AWS region for this environment"
  type        = string
  default     = "ap-northeast-1"
}

provider "aws" {
  region                      = var.aws_region
  access_key                  = "mock"
  secret_key                  = "mock"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}
