config {
  format = "compact"
}

plugin "terraform" {
  enabled = true
  version = "0.6.0"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}

plugin "aws" {
  enabled = true
  version = "0.35.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "terraform_required_providers" { enabled = true }
rule "terraform_naming_convention"  { enabled = true }
rule "aws_s3_bucket_versioning"     { enabled = true }
rule "aws_sg_open_ingress"          { enabled = true }
