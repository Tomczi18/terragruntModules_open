resource "aws_security_group" "rds_sg" {
  name        = "rds_sg"
  description = "MySQL access within VPC"
  vpc_id      = var.vpc_id

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-rds-db-sg-3306"
  }
}