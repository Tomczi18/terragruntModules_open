# Autoscaling Group Resource
resource "aws_autoscaling_group" "this" {
  name_prefix         = "ec2-asg-"
  desired_capacity    = 2
  max_size            = 5
  min_size            = 2
  vpc_zone_identifier = var.private_subnet_ids
#   target_group_arns  = place for load balancer name      
  health_check_type   = "EC2"

  # Launch Template
  launch_template {
    id      = aws_launch_template.this.id
    version = aws_launch_template.this.latest_version
  }

  # Instance Refresh
  instance_refresh {
    strategy = "Rolling"
    preferences {
      #instance_warmup = 300 # Default behavior is to use the Auto Scaling Group's health check grace period.
      min_healthy_percentage = 50
    }
    triggers = [/*"launch_template",*/ "desired_capacity"] # You can add any argument from ASG here, if those has changes, ASG Instance Refresh will trigger
  }

  tag {
    key                 = "Owner"
    value               = "tomaj"
    propagate_at_launch = true
  }
}



