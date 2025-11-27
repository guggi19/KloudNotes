# Firestore
resource "google_firestore_database" "fsdb" {
  project = var.project_id
  name = "(default)"
  location_id = var.region
  type = "FIRESTORE_NATIVE"
}
# Export Bucket for PDFs and Files
resource "google_storage_bucket" "sb_export" {
  name = "${var.project_id}-exports"
  location = var.region

  uniform_bucket_level_access = true
  lifecycle_rule {
    condition {
      age = 7
    }
    action {
      type = "Delete"
    }
  }
}