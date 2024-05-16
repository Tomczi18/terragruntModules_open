resource "aws_db_parameter_group" "this" {
  name   = var.parameter_group_name
  family = "mysql8.0"

  lifecycle {
    create_before_destroy = true
  }
}