resource "aws_subnet" "private_subnet-1a" {
  vpc_id = aws_vpc.lucas_containers.id

  cidr_block        = "10.0.0.0/20"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s=private-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "private_subnet-1b" {
  vpc_id = aws_vpc.lucas_containers.id

  cidr_block        = "10.0.16.0/20"
  availability_zone = format("%sb", var.region)

  tags = {
    Name = format("%s=private-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "private_subnet-1c" {
  vpc_id = aws_vpc.lucas_containers.id

  cidr_block        = "10.0.32.0/20"
  availability_zone = format("%sc", var.region)

  tags = {
    Name = format("%s=private-subnet-1c", var.project_name)
  }
}

### Routes

resource "aws_route_table" "private_internet_access_1a" {
  vpc_id = aws_vpc.lucas_containers.id

  tags = {
    Name = format("%s-private", var.project_name)
  }
}

resource "aws_route_table" "private_internet_access_1b" {
  vpc_id = aws_vpc.lucas_containers.id

  tags = {
    Name = format("%s-private", var.project_name)
  }
}
resource "aws_route_table" "private_internet_access_1c" {
  vpc_id = aws_vpc.lucas_containers.id

  tags = {
    Name = format("%s-private", var.project_name)
  }
}
resource "aws_route" "private-access_1a" {
  route_table_id         = aws_route_table.private_internet_access_1a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat-1a.id
}

resource "aws_route" "private-access_1b" {
  route_table_id         = aws_route_table.private_internet_access_1b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat-1b.id
}

resource "aws_route" "private-access_1c" {
  route_table_id         = aws_route_table.private_internet_access_1c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat-1c.id
}

resource "aws_route_table_association" "private_route_association-1a" {
  subnet_id      = aws_subnet.private_subnet-1a.id
  route_table_id = aws_route_table.private_internet_access_1a.id
}

resource "aws_route_table_association" "private_route_association-1b" {
  subnet_id      = aws_subnet.private_subnet-1b.id
  route_table_id = aws_route_table.private_internet_access_1b.id
}
resource "aws_route_table_association" "private_route_association-1c" {
  subnet_id      = aws_subnet.private_subnet-1c.id
  route_table_id = aws_route_table.private_internet_access_1c.id
}