resource "aws_alb_listener" "alb_http_listener" {
  load_balancer_arn = "${aws_lb.this.arn}"
  port = "80" 
  protocol = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.public_target_group.arn}"
    type             = "forward"
  }

  lifecycle {
    create_before_destroy = true
  }
}

# # http listener rules
# resource "aws_alb_listener_rule" "alb_http_public_rule" {
#   listener_arn = "${aws_alb_listener.alb_http_listener.arn}"
#   priority = 100

#   action {
#     type = "forward"
#     target_group_arn = "${aws_alb_target_group.public_target_group.arn}"
#   }

#   condition {
     
#     # field = "host-header"
#     # values = ["public-khiem.${var.domain_name}"]
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }
