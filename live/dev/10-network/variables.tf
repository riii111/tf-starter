variable "name_prefix" {
  description = "Prefix used in names"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDRs for public subnets"
  type        = list(string)
}

variable "az_suffixes" {
  description = "AZ suffixes corresponding to subnets"
  type        = list(string)
  default     = ["a", "c"]
}

