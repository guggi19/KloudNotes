locals {
  apis = [
    "firestore.googleapis.com",
    "storage.googleapis.com",
    "cloudfunctions.googleapis.com",
    "run.googleapis.com",
    "eventarc.googleapis.com",
    "cloudscheduler.googleapis.com",
    "iam.googleapis.com",
    "firebase.googleapis.com",
    "firebasehosting.googleapis.com"
  ]
}

resource "google_project_service" "enabled_apis" {
  for_each = toset(local.apis)
  project = var.project_id
  service = each.key
  disable_on_destroy = false
}