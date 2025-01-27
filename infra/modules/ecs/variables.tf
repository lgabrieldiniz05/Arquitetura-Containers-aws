
variable "service_name" {
  type        = string
  description = "Nome do serviço a ser utilizado no ECS ou identificador similar."
}

variable "task_role" {
  type        = string
  description = "Nome da task role para o serviço do ECS"
}