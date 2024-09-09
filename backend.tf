terraform {
  backend "s3" {
    bucket = "terra123form"
    key = "nk03/terraform.tfstate"
    encrypt = true
    region = "us-west-2"
   # dynamodb_table = "terras3"
  }
}