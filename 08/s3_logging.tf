resource "aws_s3_bucket" "log_bucket" {
  bucket = "my-tf-log-bucket-jgyy"
}

resource "aws_s3_bucket_acl" "log_bucket_acl" {
  bucket = aws_s3_bucket.log_bucket.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_logging" "example" {
  bucket = aws_s3_bucket.b.id

  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}