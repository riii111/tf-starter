resource "aws_security_group" "db" {
  name        = "${var.name_prefix}-rds-sg"
  description = "RDS security group"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_vpc_security_group_ingress_rule" "db_ingress_cidrs" {
  count             = length(var.allowed_cidr_blocks)
  security_group_id = aws_security_group.db.id
  cidr_ipv4         = var.allowed_cidr_blocks[count.index]
  from_port         = var.port
  to_port           = var.port
  ip_protocol       = "tcp"
}

