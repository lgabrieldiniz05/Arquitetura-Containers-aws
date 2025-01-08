resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.lucas_containers.id

  tags = {
    Name = format("%s-%s-igw", var.project_name, var.region)
  }
}