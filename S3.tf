terraform {
  backend "s3" {
    bucket = "mystate-file-bucket"
    key = "project-infrastrcture"
    region = "us-east-1"
  }
}
