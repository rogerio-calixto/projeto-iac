resource "aws_vpc" "main" {
  cidr_block = var.vpc-settings.vpc-cidr

  tags = {
    Name = var.vpc-settings.vpc-name
  }
}