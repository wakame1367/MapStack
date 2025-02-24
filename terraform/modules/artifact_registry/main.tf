resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = var.repository_id
  format        = "DOCKER"
  description   = var.description
}
