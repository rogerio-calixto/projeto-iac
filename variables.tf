variable "region" {
    type = string
    default = "us-east-1"
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
    default = {
        vpc-name = "vpc-projeto-iac"
        vpc-cidr = "10.0.0.0/24"
        subnet_pvt_config = [
            {
               name = "subnet-prv-a"
               cidr_block = "10.0.0.0/27"
               available_zone = "us-east-1a"
               map_public_ip_on_launch = false
            },
            {
               name = "subnet-prv-b"
               cidr_block = "10.0.0.32/27"
               available_zone = "us-east-1b"
               map_public_ip_on_launch = false
            }
        ]
        subnet_pub_config = [
            {
               name = "subnet-pub-a"
               cidr_block = "10.0.0.64/27"
               available_zone = "us-east-1a"
               map_public_ip_on_launch = true
            },
            {
               name = "subnet-pub-b"
               cidr_block = "10.0.0.96/27"
               available_zone = "us-east-1b"
               map_public_ip_on_launch = true
            }
        ]        
    }
}