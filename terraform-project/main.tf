resource "google_service_account" "karnika-gupta-test" {
  account_id   = "my-service-account"
  project = "karnika-gupta"
}
resource "google_storage_bucket" "COLDLINE" {
  name          = "dwz234"
  storage_class = "COLDLINE"
  location      = "asia-northeast1"
  uniform_bucket_level_access = true
}
resource "google_compute_network" "vpc" {
 name                    = "${var.name}-vpc"
 auto_create_subnetworks = "false"
}

