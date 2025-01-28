module "service" {
  source         = "./modules/ecs"
  service_name   = "teste-lucas"
  service_cpu    = 256
  service_memory = 512
  service_port   = 80
  region         = "us-east-1"
}