variable "env" {
  description = "Environment name."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "ec2_bastion_subnet_id" {
  description = "EC2-bastion subnet id"
  type = string
}

variable "vpc_id" {
  description = "Id od VPC"
  type = string
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type = string
}