provider "google" {
  project = var.project_id
  region = var.region
  credentials = file("terraform_gcp_key.json")
}