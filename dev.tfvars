environment = "dev"
region      = "us-east-1"
vpc-settings = {
  vpc-name = "projeto-iac-vpc-dev"
  vpc-cidr = "10.0.0.0/24"
  subnet_pvt_config = [
    {
      name                    = "subnet-dev-prv-a"
      cidr_block              = "10.0.0.0/27"
      available_zone          = "us-east-1a"
      map_public_ip_on_launch = false
    },
    {
      name                    = "subnet-dev-prv-b"
      cidr_block              = "10.0.0.32/27"
      available_zone          = "us-east-1b"
      map_public_ip_on_launch = false
    }
  ]
  subnet_pub_config = [
    {
      name                    = "subnet-dev-pub-a"
      cidr_block              = "10.0.0.64/27"
      available_zone          = "us-east-1a"
      map_public_ip_on_launch = true
    },
    {
      name                    = "subnet-dev-pub-b"
      cidr_block              = "10.0.0.96/27"
      available_zone          = "us-east-1b"
      map_public_ip_on_launch = true
    }
  ]
}

keypair = "projeto-iac-keypair-dev"