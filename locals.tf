data "aws_caller_identity" "current" {}
locals {
  now        = timestamp()
  project    = "projeto-iac"
  createdby  = "terraform"
  account_id = data.aws_caller_identity.current.account_id
} 