resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.lucas_containers.id
}

resource "aws_ssm_parameter" "private_1a" {
  name  = format("/%s/vpc/private_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet-1a.id
}

resource "aws_ssm_parameter" "private_1b" {
  name  = format("/%s/vpc/private_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet-1b.id
}

resource "aws_ssm_parameter" "private_1c" {
  name  = format("/%s/vpc/private_subnet_1c", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet-1c.id
}

resource "aws_ssm_parameter" "public_1a" {
  name  = format("/%s/vpc/public_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet-1a.id
}

resource "aws_ssm_parameter" "public_1b" {
  name  = format("/%s/vpc/public_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet-1b.id
}

resource "aws_ssm_parameter" "public_1c" {
  name  = format("/%s/vpc/public_subnet_1c", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet-1c.id
}

resource "aws_ssm_parameter" "database_1a" {
  name  = format("/%s/vpc/database_subnet_1a", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet-1a.id
}

resource "aws_ssm_parameter" "database_1b" {
  name  = format("/%s/vpc/database_subnet_1b", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet-1b.id
}

resource "aws_ssm_parameter" "database_1c" {
  name  = format("/%s/vpc/database_subnet_1c", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet-1c.id
}