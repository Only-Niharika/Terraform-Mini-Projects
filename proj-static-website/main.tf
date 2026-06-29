resource "aws_s3_bucket" "static-website-project" {
    bucket = "${var.bucket_name}-${random_id.rand_id.hex}"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.static-website-project.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "static-website" {
    bucket = aws_s3_bucket.static-website-project.bucket
    policy = jsonencode(
                {
    Version = "2012-10-17",
    Statement = [
        {
            Sid = "PublicReadGetObject",
            Effect = "Allow",
            Principal = "*",
            Action = "s3:GetObject",
            Resource = [
                "arn:aws:s3:::${aws_s3_bucket.static-website-project.bucket}/*"
            ]
        }
    ]
}
    )
}

resource "aws_s3_bucket_website_configuration" "static-website-project" {
  bucket = aws_s3_bucket.static-website-project.bucket

  index_document {
    suffix = "index.html"
  }
  }

resource "aws_s3_object" "index-html" {
    bucket = aws_s3_bucket.static-website-project.bucket 
    key = "./index.html"
    source = "index.html"
    content_type = "text/html"
}

resource "aws_s3_object" "style-css" {
    bucket = aws_s3_bucket.static-website-project.bucket
    key = "./style.css"
    source = "style.css"
    content_type = "text/css"
}

resource "random_id" "rand_id" {
    byte_length = 4
}
