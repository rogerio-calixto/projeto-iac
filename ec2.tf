resource "aws_security_group" "main" {
  name        = "projeto-iac-sg_servidor"
  description = "Habilita acesso HTTP"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = [
      "187.183.41.49/32",
      "201.28.82.210/32"
    ]
  }

    ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [
      "187.183.41.49/32",
      "201.28.82.210/32"
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    projeto  = local.project
    ambiente = var.environment
  }
}

# data "template_file" "userdata_pbt" {
#   template = file("scripts/install_servidor.sh")
# }

# Windows

# module "servidor" {
#   source        = "git::https://github.com/rogerio-calixto/TemplateInstance.git"
#   regiao        = var.region
#   tipo_criacao  = local.createdby
#   projeto       = local.project
#   ambiente      = var.environment
#   ami           = lookup(var.win_amis, var.region)
#   instance_type = var.instance_type
#   keypair_name  = var.keypair
#   vpc_id        = aws_vpc.main.id
#   subnet_id     = aws_subnet.subnet_public_1.id
#   sg_id         = aws_security_group.main.id
#   instance_name = "Servidor Windows - Dev"
#   #   user_data               = data.template_file.userdata_pbt.rendered
#   #   instance_profile_name   = aws_iam_instance_profile.ec2_profile.name
#   disable_api_termination = false
#   root_block_device_size  = var.root-block-device-size
#   associate_public_ip     = true
# }

# Linux
module "servidor" {
  source        = "git::https://github.com/rogerio-calixto/TemplateInstance.git"
  regiao        = var.region
  tipo_criacao  = local.createdby
  projeto       = local.project
  ambiente      = var.environment
  ami           = lookup(var.linux_amis, var.region)
  instance_type = var.instance_type
  keypair_name  = var.keypair
  vpc_id        = aws_vpc.main.id
  subnet_id     = aws_subnet.subnet_public_1.id
  sg_id         = aws_security_group.main.id
  instance_name = "Servidor Linux - Dev"
  #   user_data               = data.template_file.userdata_pbt.rendered
  #   instance_profile_name   = aws_iam_instance_profile.ec2_profile.name
  disable_api_termination = false
  root_block_device_size  = var.root-block-device-size
  associate_public_ip     = true
}