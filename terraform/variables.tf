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

variable "frontend_bucket_name" {
  type        = string
  description = "フロントエンド用Cloud Storageバケット名"
}

variable "cloud_run_service_name" {
  type        = string
  description = "Cloud Runサービスの名前"
}

variable "titiler_image" {
  type        = string
  description = "Artifact Registryに格納されたTiTilerコンテナイメージのURL"
}

variable "cloud_run_max_instances" {
  type        = number
  description = "Cloud Runの最大インスタンス数"
  default     = 10
}

variable "cloud_run_concurrency" {
  type        = number
  description = "Cloud Runの同時実行数"
  default     = 80
}
