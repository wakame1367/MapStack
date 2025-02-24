output "repository_name" {
  description = "作成されたArtifact Registryリポジトリの名前"
  value       = google_artifact_registry_repository.docker_repo.name
}
