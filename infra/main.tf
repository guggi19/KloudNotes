resource "google_firestore_database" "fsdb" {
  project = var.project_id
  name = "(default)"
  location_id = var.region
  type = "FIRESTORE_NATIVE"
}