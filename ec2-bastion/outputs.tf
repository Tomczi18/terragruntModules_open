output "ec2_public_instance_id" {
  description = "ID of instance"
  value       = aws_instance.this.id
}

output "ec2_public_ip" {
  description = "Public IP address assigned to the instance"
  value       = aws_instance.this.public_ip
}

output "ec2_public_sg_ids" {
  description = "EC2 public sg id"
  value       = [aws_security_group.ec2_bastion_sg.id]
}