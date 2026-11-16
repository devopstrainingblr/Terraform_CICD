terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }

  backend "s3" {
    bucket = "jenkins-terraform-state-39583dkje"
    region = "ap-south-1"
    key = "terraform.tfstate"

    use_lockfile = true
  }
}