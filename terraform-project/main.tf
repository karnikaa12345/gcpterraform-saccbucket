resource "google_storage_bucket_iam_policy" "bucket-testbucket-iam-policy" {
  bucket      = "testbucket"
  policy_data = "${data.google_iam_policy.bucket-testbucket-policy-data.policy_data}"
}

data "google_iam_policy" "bucket-testbucket-policy-data" {
  binding {
    role = "roles/storage.legacyBucketReader"

    members = [ "projectViewer:myproject" ]
  }
  binding {
    role = "roles/storage.legacyBucketOwner"

    members = [ "projectEditor:myproject", "projectOwner:myproject" ]
  }
}
resource "google_service_account" "karnika-gupta-test" {
  account_id   = "my-service-account"
  project = "karnika-gupta"
}
resource "google_storage_bucket" "COLDLINE123" {
  name          = "dwz234"
  storage_class = "COLDLINE"
  location      = "asia-northeast1"
  uniform_bucket_level_access = true
}



