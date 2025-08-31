variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "vpc_id" {
  description = "Target VPC ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}

variable "enable_remote_state" {
  description = "Use terraform_remote_state to fetch network outputs"
  type        = bool
  default     = false
}

variable "remote_state_bucket" {
  description = "S3 bucket name for remote state (when enable_remote_state=true)"
  type        = string
  default     = ""
}

variable "remote_state_key" {
  description = "S3 key for remote state of network layer"
  type        = string
  default     = ""
}

variable "remote_state_region" {
  description = "AWS region of remote state bucket"
  type        = string
  default     = "ap-northeast-1"
}
