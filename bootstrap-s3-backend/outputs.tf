output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.tamaras_table2.name
}
