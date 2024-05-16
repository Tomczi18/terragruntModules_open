resource "aws_db_instance" "this" {
  allocated_storage    = 10
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = aws_db_parameter_group.this.name
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.rdsdb_subnet_group.name
  deletion_protection = false
}