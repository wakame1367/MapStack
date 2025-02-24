variable "project_name" {
  type    = string
  default = "mapstack"
}

variable "project_id" {
  type    = string
  default = "mapstack-451909"
}

variable "region" {
  type    = string
  default = "asia-northeast1"
}

variable "artifact_repo_id" {
  type        = string
  description = "Artifact RegistryリポジトリID"
  default     = "titiler"
}
