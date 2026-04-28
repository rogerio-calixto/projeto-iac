variable "environment" {
  type        = string
  description = ""
}

variable "region" {
  type        = string
  description = ""
}

variable "vpc-settings" {
    type = object ({
        vpc-name = string
        vpc-cidr = string
        subnet_pvt_config = list(object({
            name = string
            cidr_block = string
            available_zone = string
            map_public_ip_on_launch = bool
        }))
        subnet_pub_config = list(object({
            name = string
            cidr_block       = string
            available_zone = string
            map_public_ip_on_launch = bool
        }))        
    })
}