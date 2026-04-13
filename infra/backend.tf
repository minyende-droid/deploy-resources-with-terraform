terraform {
  backend "s3" {
    bucket         = "tamara-project-12345"
    key            = "infra/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "tamaras_table2"
  }
}