resource "aws_ecs_task_definition" "main" {
  family                   = format("%s-service", var.service_name)
  network_mode             = "awsvpc"
  cpu                      = var.service_cpu
  requires_compatibilities = ["FARGATE"]
  memory                   = var.service_memory


  container_definitions = jsondecode([
    {
      name   = var.service_name,
      image  = format("%s:latest", aws_ecr_repository.main.repository_url),
      cpu    = var.service_cpu
      memory = var.service_memory

      essential = true

      portMappings = [
        {
          containerPort = var.service_port
          hostPort      = var.service_port
          protocol      = "tcp"
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = aws_cloudwatch_log_group.main.id
          awslogs-region        = var.region
          awslogs-stream-prefix = var.service_name
        }

      }
    }
  ])

}