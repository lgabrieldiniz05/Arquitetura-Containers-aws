variable "project_name" {
  description = "O nome do projeto, usado para nomear recursos no escopo deste Terraform."
  type        = string
}
variable "region" {
  description = "A região da AWS onde os recursos serão criados."
  type        = string
}
variable "capacity_providers" {
  type        = list(any)
  description = "A lista dos capacity providers que serão permitidos no cluster fargate"
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}

variable "cluster_name" {
  description = "Nome do cluster do Elastic container Service"
  type = string
}

variable "service_name" {
  type        = string
  description = "Nome do serviço a ser utilizado no ECS ou identificador similar."
}

variable "vpc_id" {
  type        = string
  description = "ID da VPC onde os recursos relacionados ao serviço serão provisionados."
}

variable "private_subnets" {
  type        = list(string)
  description = "Lista de IDs das subnets privadas onde o serviço será implantado."
}

variable "service_port" {
  type        = number
  description = "Porta na qual o serviço estará acessível."
}

variable "service_cpu" {
  type        = number
  description = "Quantidade de CPU alocada para o serviço, especificada em unidades de CPU do ECS."
}

variable "service_memory" {
  type        = number
  description = "Quantidade de memória alocada para o serviço, especificada em MB."
}



