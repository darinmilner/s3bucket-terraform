resource "random_integer" "random" {
  min = 1
  max = 10
}

resource "aws_s3_bucket" "devsearch-dev-bucket" {
  acl    = "public-read"
  bucket = "devsearch-image-bucket-${var.environment}"

  tags = {
    Name        = "Devsearch-images-bucket-${random_integer.random.id}"
    Environment = var.environment
  }
}
