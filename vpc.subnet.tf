resource "aws_subnet" "subnet_private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_pvt_config[0].cidr_block 
  availability_zone = var.subnet_pvt_config[0].available_zone

  tags = {
    Name = var.subnet_pvt_config[0].name
  }
}

resource "aws_subnet" "subnet_private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_pvt_config[1].cidr_block 
  availability_zone = var.subnet_pvt_config[1].available_zone

  tags = {
    Name = var.subnet_pvt_config[1].name
  }
}