# bucket name

variable "bucket_name" {
    type = string
    description = "Name of the S3 bucket to create"
    default = "gc1-bucket-var-module-default" 
}
variable "common_tags" {
    type = map(string)
    description = "Map of tags to apply"
    default = {}
}
