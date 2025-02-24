variable "region" {
  type        = string
  description = "GCPリージョン（例: us-central1）"
}

variable "repository_id" {
  type        = string
  description = "Artifact RegistryリポジトリのID。リポジトリ名として使われます。"
}

variable "description" {
  type        = string
  description = "リポジトリの説明"
  default     = "Docker repository for storing container images."
}
