terraform {
  required_version = ">= 1.6.0"

  backend "gcs" {
    bucket = "kloudnotes-tfstate-478113"
    prefix = "infra/state"
  }

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.37"
    }
    google-beta = {
        source = "hashicorp/google-beta"
        version = "~> 5.37"
    }
  }
}