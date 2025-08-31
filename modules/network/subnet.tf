locals {
  az_for_index = [for idx in range(length(var.public_subnet_cidrs)) : "${var.region}${var.az_suffixes[idx % length(var.az_suffixes)]}"]
}

resource "aws_subnet" "public" {
  count                   = length(var.public_subnet_cidrs)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = local.az_for_index[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name_prefix}-public-${count.index}"
  }
}

