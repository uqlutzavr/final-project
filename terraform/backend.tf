terraform {
  backend "s3" {
    bucket         = "final-project-uqlut99-bucket"
    key            = "user/uqlut99@gmail.com/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "lock-tf-eks-uqlut99"
    region = "eu-central-1"
    profile = "default"
  }
}

