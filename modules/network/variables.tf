variable "name_prefix" {
  description = "Prefix to use for resource names"
  type        = string
}

variable "region" {
  description = "AWS region (e.g., ap-northeast-1)"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block (e.g., 10.10.0.0/16)"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "az_suffixes" {
  description = "AZ suffixes to assign to subnets (paired by index with public_subnet_cidrs)"
  type        = list(string)
  default     = ["a", "c"]
}

