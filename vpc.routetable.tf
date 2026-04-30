resource "aws_route_table" "rt_private_1" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "projeto-iac-rtb-private1-${var.vpc-settings.subnet_pvt_config[0].available_zone}"
  }
}

resource "aws_route_table" "rt_private_2" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "projeto-iac-rtb-private2-${var.vpc-settings.subnet_pvt_config[1].available_zone}"
  }
}

resource "aws_route_table_association" "rt_private_association_subnet1" {
  route_table_id = aws_route_table.rt_private_1.id
  subnet_id      = aws_subnet.subnet_private_1.id
}

resource "aws_route_table_association" "rt_private_association_subnet2" {
  route_table_id = aws_route_table.rt_private_2.id
  subnet_id      = aws_subnet.subnet_private_2.id
}



# roteamento subnets publicas
resource "aws_route_table" "rt_public_1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "projeto-iac-rtb-public-${var.vpc-settings.subnet_pub_config[0].available_zone}"
  }
}

resource "aws_route_table_association" "rt_association_public_1" {
  route_table_id = aws_route_table.rt_public_1.id
  subnet_id      = aws_subnet.subnet_public_1.id
}

resource "aws_route_table" "rt_public_2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "projeto-iac-rtb-public-${var.vpc-settings.subnet_pub_config[1].available_zone}"
  }
}

resource "aws_route_table_association" "rt_association_public_2" {
  route_table_id = aws_route_table.rt_public_2.id
  subnet_id      = aws_subnet.subnet_public_2.id
}