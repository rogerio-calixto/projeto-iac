# Configure the AWS Provider

provider "aws" {
  region  = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = local.project
      CreatedBy   = local.createdby
    }
  }
}