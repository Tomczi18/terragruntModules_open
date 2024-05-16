variable "env" {
  description = "Environment name."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}

variable "private_subnet_ids" {
  description = "IDs of private subnets"
  type        = list(string)
}

variable "vpc_id" {
  description = "Id of VPC"
  type = string
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type = string
}