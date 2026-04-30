resource "aws_subnet" "subnet_private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc-settings.subnet_pvt_config[0].cidr_block
  availability_zone = var.vpc-settings.subnet_pvt_config[0].available_zone

  tags = {
    Name = "projeto-iac-${var.vpc-settings.subnet_pvt_config[0].name}"
  }
}

resource "aws_subnet" "subnet_private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc-settings.subnet_pvt_config[1].cidr_block
  availability_zone = var.vpc-settings.subnet_pvt_config[1].available_zone

  tags = {
    Name = "projeto-iac-${var.vpc-settings.subnet_pvt_config[1].name}"
  }
}

resource "aws_subnet" "subnet_public_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc-settings.subnet_pub_config[0].cidr_block
  availability_zone = var.vpc-settings.subnet_pub_config[0].available_zone

  tags = {
    Name = "projeto-iac-${var.vpc-settings.subnet_pub_config[0].name}"
  }
}

resource "aws_subnet" "subnet_public_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.vpc-settings.subnet_pub_config[1].cidr_block
  availability_zone = var.vpc-settings.subnet_pub_config[1].available_zone

  tags = {
    Name = "projeto-iac-${var.vpc-settings.subnet_pub_config[1].name}"
  }
}