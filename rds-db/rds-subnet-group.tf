resource "aws_db_subnet_group" "rdsdb_subnet_group" {
  name       = var.subnet_group_name
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}