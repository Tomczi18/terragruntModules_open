variable "vpc_id" {
  description = "Id of VPC"
  type        = string
}

variable "asg_id" {
  description = "Id of autoscaling group"
  type        = string
}

variable "ec2_instaces" {
  description = "EC2 private instances ids"
  type        = list(string)
}

variable "ec2_private_sg_ids" {
  description = "EC2 private sg ids"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Public subnets ids"
  type        = list(string)
}
