terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "august-water-417802"
  region  = "northamerica-northeast2"
  #credentials = file("C:\\MyPrograms\\GCP\\my-second-project-418213-c4584d61b2a8.json")
}

#data "google_compute_default_service_account" "default" {
#}

resource "google_service_account" "sa" {
  account_id   = "projects/august-water-417802/serviceAccounts/proj1servacc@august-water-417802.iam.gserviceaccount.com"
  display_name = "A service account that Chris can use"
}

resource "google_service_account_iam_member" "admin-account-iam" {
  service_account_id = google_service_account.sa.name
  role               = "roles/iam.workloadIdentityUser"
  member             = "principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf_mvn_test_gg"
}

# Allow SA service account use the default GCE account
#resource "google_service_account_iam_member" "gce-default-account-iam" {
#  service_account_id = data.google_compute_default_service_account.default.name
#  role               = "roles/iam.serviceAccountUser"
#  member             = "serviceAccount:${google_service_account.sa.email}"
#}

# Task 2: Create Docker repository in GCP Artifact Registry
#resource "google_artifact_registry_repository" "docker_repo" {
#  provider      = google
#  project       = "august-water-417802"
#  location      = "us-central1"
#  repository_id = "my-docker-repo"
#  format        = "DOCKER"
#}

# Task 3: Create Docker image and upload to the Docker repository
#resource "google_cloudbuild_trigger" "build_trigger" {
#  name        = "docker-image-build-trigger"
#  description = "Trigger to build and push Docker image to Artifact Registry"
#  trigger_template {
#    repo_name   = google_artifact_registry_repository.docker_repo.name
#    branch_name = "main"
#  }
#  filename = "cloudbuild.yaml"
#}

#resource "google_project_service" "cloud_run_api" {
#  service = "run.googleapis.com"
#}

#resource "google_cloud_run_v2_job" "default" {
#  name     = "cloudrun-job"
#  location = "us-central1"

#  template {
#    template {
#      containers {
#        image = "us-central1-docker.pkg.dev/august-water-417802/my-docker-repo/quickstart-image:tag1"
#      }
#    }
#  }
#  depends_on = [ // Here
#    google_project_service.cloud_run_api
#  ]
#}
