resource "google_service_account" "karnika-gupta-test" {
  account_id   = "my-service-account"
  project = "karnika-gupta"
}
resource "google_storage_bucket" "travel" {
  name          = "dwz123"
  location      = "asia-northeast1"
  uniform_bucket_level_access = true
}

