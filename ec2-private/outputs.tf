output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value       = aws_instance.this[*].id
}

output "ec2_private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_instance.this[*].private_ip
}

output "ec2_private_sg_ids" {
  description = "EC2 private sg ids"
  value       = [aws_security_group.ec2_private_sg.id]
}

