resource "aws_ecs_service" "this" {
  name = "${var.env}-ecs-service"
  
  cluster = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.this.arn
  desired_count = var.aws_ecs_service_desired_count

  network_configuration {
    subnets = var.private_subnet_ids
    security_groups = var.security_groups_ids
  }

  force_new_deployment = true
  placement_constraints {
    type = "distinctInstance"
  }

  triggers = {
    redeployment = timestamp()
  }

  capacity_provider_strategy {
    capacity_provider = aws_ecs_capacity_provider.this.name
    weight = 100
  }

  load_balancer {
    target_group_arn = var.alb_target_group_arn
    container_name = var.container_name
    container_port = 80
  }
}