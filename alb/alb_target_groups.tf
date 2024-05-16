resource "aws_alb_target_group" "public_target_group" {
  name = "alb-public-target-group"
  port = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_autoscaling_attachment" "alb-asg-attachment" {
  autoscaling_group_name = var.asg_id
  lb_target_group_arn    = aws_alb_target_group.public_target_group.arn
}

resource "aws_lb_target_group_attachment" "alb-instances-attachment" {
  target_group_arn = aws_alb_target_group.public_target_group.arn
  target_id        = var.ec2_instaces[count.index]
  # port             = 80
  count = length(var.ec2_instaces)
}
