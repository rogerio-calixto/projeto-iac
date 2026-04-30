variable "environment" {
  type        = string
  description = ""
}

variable "region" {
  type        = string
  description = ""
}

variable "vpc-settings" {
  type = object({
    vpc-name = string
    vpc-cidr = string
    subnet_pvt_config = list(object({
      name                    = string
      cidr_block              = string
      available_zone          = string
      map_public_ip_on_launch = bool
    }))
    subnet_pub_config = list(object({
      name                    = string
      cidr_block              = string
      available_zone          = string
      map_public_ip_on_launch = bool
    }))
  })
}

variable "win_amis" {
  description = "imagens disponíveis"
  default = {
    us-east-1 = "ami-0798c9ebaf695e14e"
    us-east-2 = ""
    us-west-1 = ""
    us-west-2 = ""
  }
}

variable "instance_type" {
  default     = "t3.micro"
  description = "tipo da instância"
}

variable "root-block-device-size" {
  type        = any
  description = "tamanho do volume EBS"
  default     = 30
}

variable "keypair" {
  type        = string
  description = ""
}