output "alb_id" {
  description = "The ID and ARN of the load balancer we created"
  value       = aws_lb.this.id
}

output "alb_arn" {
  description = "The ID and ARN of the load balancer we created"
  value       = aws_lb.this.arn
}

output "alb_target_group_arn" {
  description = "ALB target group arn"
  value = aws_alb_target_group.public_target_group.arn
}