locals {
  parameter_group_name = var.parameter_group_name != "" ? var.parameter_group_name : null
}

resource "aws_db_instance" "this" {
  identifier              = "${var.name_prefix}-db"
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  port                    = var.port
  publicly_accessible     = var.publicly_accessible
  vpc_security_group_ids  = [aws_security_group.db.id]
  db_subnet_group_name    = aws_db_subnet_group.this.name
  skip_final_snapshot     = true
  backup_retention_period = var.backup_retention_period
  deletion_protection     = var.deletion_protection
  parameter_group_name    = local.parameter_group_name
}

