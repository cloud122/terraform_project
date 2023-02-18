resource "random_uuid" "uuid" {}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "${var.bucket_name}-${random_uuid.uuid.result}"
  acl = "private"
  force_destroy = true
}

# Upload an object
# resource "aws_s3_bucket_object" "object" {

#   bucket = aws_s3_bucket.test_bucket.id

#   key    = "profile"

#   acl    = "private"  # or can be "public-read"

#   source = "yourfile.zip"

#   etag = filemd5("yourfile.zip")

# }