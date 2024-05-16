variable "env" {
  description = "Environment name."
  type        = string
}

variable "autoscaling_group_arn" {
  description = "Autoscaling Group ARN"
  type        = string
}

variable "aws_ecs_service_desired_count" {
  description = "Desired count for aws ecs service"
  type        = number
}

variable "private_subnet_ids" {
  description = "IDs of private subnets"
  type        = list(string)
}

variable "security_groups_ids" {
  description = "List of private security groups ids"
  type        = list(string)
}

variable "alb_target_group_arn" {
  description = "ALB target group arn"
  type        = string
}

variable "container_name" {
  description = "Name of container"
  type        = string
}

variable "autoscaling_group_arn" {
  description = "Autoscaling Group ARN"
  type        = string
}

variable "maximum_scaling_step_size" {
  description = "Maximum scaling step size"
  type = number
}

variable "minimum_scaling_step_size" {
  description = "Minimum scaling step size"
  type = number
}

variable "target_capacity" {
  description = "Target capacity"
  type = number
}