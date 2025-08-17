terraform {
  backend "s3" {
    bucket         = "terraformec2346536567"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    key            = "eks/terraform.tfstate"
    workspace_key_prefix = "eks"
  }
}

