data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "serviceAccount:xyz-136@karnika-gupta.iam.gserviceaccount.com"
    ]
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = google_storage_bucket.testbucketza.name
  policy_data = data.google_iam_policy.admin.policy_data
}
resource "google_service_account" "storage_sa"{
  account_id   = "storage-sa"
  project = "karnika-gupta"
}

resource "google_storage_bucket" "testbucketza"{
  name          = "daz2345"
  storage_class = "COLDLINE"
  location      = "asia-northeast1"
  uniform_bucket_level_access = true
}



