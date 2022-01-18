output "bucket-id" {
  value = aws_s3_bucket.devsearch-dev-bucket.id
}

output "bucket-region" {
  value = aws_s3_bucket.devsearch-dev-bucket.region
}
