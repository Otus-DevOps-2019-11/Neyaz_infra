terraform {
  backend "gcs" {
    bucket  = "Neyaz-bucket"
    prefix  = "terraform/prod"
  }
}
