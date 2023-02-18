
# resource "aws_dynamodb_table_item" "main_item" {
#   table_name = aws_dynamodb_table.dynamodb_table.name
#   hash_key = aws_dynamodb_table.dynamodb_table.hash_key
#   item = <<ITEM
# {
#   "Version": {"S": "1"},
#   "username": {"S": "testuser"},
#   "smtpserver": {"S": "testserver"},
#   "smtpuser": {"S": "qewrdsf3fsddsf"},
#   "bucket": {"S": "test-bucket"},
#   "datasource": {"S": "1.1.1.1"}
# }
# ITEM
# }
resource "aws_dynamodb_table_item" "config_json" {
  table_name = aws_dynamodb_table.dynamodb_table.name
  hash_key = aws_dynamodb_table.dynamodb_table.hash_key
  for_each = local.tf_data
  item = jsonencode(each.value)
}
resource "aws_dynamodb_table" "dynamodb_table" {
  name           = "vl-${var.ENVIRONMENT}-configs"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Version"

  attribute {
    name = "Version"
    type = "S"
  }

  # ttl {
  #   attribute_name = "TimeToExist"
  #   enabled        = false
  # }

}

