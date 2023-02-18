# bucket name
variable "ENVIRONMENT" {
  type        = string
  description = "Name of ENVIRONMENT"
  default     = "test-root"
}

variable "web_region" {
  type        = string
  default     = "us-east-1"
  description = "Name of region"
}

variable "common_tags" {
  type        = map(string)
  description = "Map of tags to apply"
  default     = {}
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
  default     = "gc1-root-var-bucket"
}

variable "instance_name" {
  type        = string
  description = "Name of the S3 bucket to create"
  default     = "gc1-root-var-module-default"
}

variable "infra_env" {
  type        = string
  description = "infrastructure environment"
  default     = "default_root_var_env"
}