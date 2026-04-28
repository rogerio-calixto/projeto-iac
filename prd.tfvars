environment = "prd"
region  = "us-east-1"
vpc-settings = {
        vpc-name = "vpc-projeto-iac-prd"
        vpc-cidr = "12.0.0.0/24"
        subnet_pvt_config = [
            {
               name = "subnet-prd-prv-e"
               cidr_block = "12.0.0.0/27"
               available_zone = "us-east-1e"
               map_public_ip_on_launch = false
            },
            {
               name = "subnet-prd-prv-f"
               cidr_block = "12.0.0.32/27"
               available_zone = "us-east-1f"
               map_public_ip_on_launch = false
            }
        ]
        subnet_pub_config = [
            {
               name = "subnet-prd-pub-e"
               cidr_block = "12.0.0.64/27"
               available_zone = "us-east-1e"
               map_public_ip_on_launch = true
            },
            {
               name = "subnet-prd-pub-f"
               cidr_block = "12.0.0.96/27"
               available_zone = "us-east-1f"
               map_public_ip_on_launch = true
            }
        ]       
}