terraform {
  backend "gcs" {
    bucket  = "neyaz-bucket"
    prefix  = "terraform/stage"
  }
}
