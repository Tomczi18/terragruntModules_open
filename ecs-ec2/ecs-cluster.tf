resource "aws_ecs_cluster" "this" {
  name = "${var.env}-ecs-cluster"
}