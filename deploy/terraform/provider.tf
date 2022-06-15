# provider.tf

# Specify the provider and access details
provider "aws" {
  # shared_credentials_file = "$HOME/.aws/credentials"
  # profile                 = "srinivas-swapyesh-account"
  # region                  = var.aws_region
  region                  = "us-east-1"
}

