/*
resource "aws_dynamodb_table" "table1" {
  name           = "utc-app2-lock-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"
  //range_key      = "GameTitle"
  //range_key      = "GameTitle"

  attribute {
    name = "LockID"
    type = "S"
  }
  /*
  attribute {
    name = "GameTitle"
    type = "S"
  }

  attribute {
    name = "TopScore"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  global_secondary_index {
    name               = "GameTitleIndex"
    hash_key           = "GameTitle"
    range_key          = "TopScore"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "utc-app2-lock-table"
    Environment = var.ENVIRONMENT
    //Environment = "dev"
  }
}
*/