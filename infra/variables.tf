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




