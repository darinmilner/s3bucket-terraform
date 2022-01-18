
resource "aws_s3_bucket_policy" "devsearch-dev-policy" {
  bucket = aws_s3_bucket.devsearch-dev-bucket.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression's result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowPublicRead",
        Effect = "Allow",
        Principal : {
          "AWS" : "*"
        },
        Action = "s3:GetObject",
        Resource = [
          # "arn:aws::s3:::devsearch-image-bucket-dev/*"
          aws_s3_bucket.devsearch-dev-bucket.arn,
          "${aws_s3_bucket.devsearch-dev-bucket.arn}/*",
        ]
      },
    ]
  })
}
