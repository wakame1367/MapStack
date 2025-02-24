terraform {
  required_version = ">= 1.9.4, < 2.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.41.0"
    }
  }
  backend "gcs" {
    bucket = "mapstack-tfstate-backend"
    prefix = "mapstack"
  }
}

locals {
  services = toset([
    "run.googleapis.com",
    "storage.googleapis.com",
    "artifactregistry.googleapis.com",
    "iam.googleapis.com",
  ])
}

resource "google_project_service" "service" {
  for_each           = local.services
  service            = each.value
  disable_on_destroy = false
}
