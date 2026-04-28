environment = "hml"
region  = "us-east-1"
vpc-settings = {
        vpc-name = "vpc-projeto-iac-hml"
        vpc-cidr = "11.0.0.0/24"
        subnet_pvt_config = [
            {
               name = "subnet-hml-prv-c"
               cidr_block = "11.0.0.0/27"
               available_zone = "us-east-1c"
               map_public_ip_on_launch = false
            },
            {
               name = "subnet-hml-prv-d"
               cidr_block = "11.0.0.32/27"
               available_zone = "us-east-1d"
               map_public_ip_on_launch = false
            }
        ]
        subnet_pub_config = [
            {
               name = "subnet-hml-pub-c"
               cidr_block = "11.0.0.64/27"
               available_zone = "us-east-1c"
               map_public_ip_on_launch = true
            },
            {
               name = "subnet-hml-pub-d"
               cidr_block = "11.0.0.96/27"
               available_zone = "us-east-1d"
               map_public_ip_on_launch = true
            }
        ]       
}