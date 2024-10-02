terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-alber"
    key            = "tfstate"
    region         = "us-east-1"
    #dynamodb_table = "tf-lock-state11"
  }
}