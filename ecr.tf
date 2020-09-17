provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

resource "aws_ecr_repository" "terraform-playground" {
  name                 = "terraform-playground"
  image_tag_mutability = "MUTABLE"
}
