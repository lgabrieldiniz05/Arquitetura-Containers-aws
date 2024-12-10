output "ssm_vpc_id" {
  value     = aws_ssm_parameter.vpc
  sensitive = true

}
output "ssm_private_subnet_1a" {
  value = aws_ssm_parameter.private_1a.id

}

output "ssm_private_subnet_1b" {
  value = aws_ssm_parameter.private_1b.id

}
output "ssm_private_subnet_1c" {
  value = aws_ssm_parameter.private_1c.id

}
output "ssm_public_subnet_1a" {
  value = aws_ssm_parameter.public_1a.id

}
output "ssm_public_subnet_1b" {
  value = aws_ssm_parameter.public_1b.id

}
output "ssm_public_subnet_1c" {
  value = aws_ssm_parameter.public_1c.id

}
output "ssm_public_database_1a" {
  value = aws_ssm_parameter.database_1a.id

}
output "ssm_public_database_1b" {
  value = aws_ssm_parameter.database_1b.id

}
output "ssm_public_database_1c" {
  value = aws_ssm_parameter.database_1c.id

}