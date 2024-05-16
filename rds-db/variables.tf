variable "db_name" {
  description = "AWS RDS Database Name"
  type        = string
}

variable "db_username" {
  description = "AWS RDS Database Administrator Username"
  type        = string
}

variable "db_password" {
  description = "AWS RDS Database Administrator Password"
  type        = string
  sensitive   = true
}

variable "instance_class" {
  description = "Instance type for running rds instance"
  type = string
  default = "db.t2.micro"
}

variable "subnet_group_name" {
  description = "RDS subnet group name"
  type = string
}

variable "private_subnet_ids" {
  description = "IDs of private subnets"
  type        = list(string)
}

variable "env" {
  description = "Environment name."
  type        = string
}

variable "vpc_id" {
  description = "Id of VPC"
  type = string
}

variable "parameter_group_name" {
  description = "Name of parameter group"
  type = string
}