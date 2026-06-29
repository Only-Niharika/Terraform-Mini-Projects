output "s3_bucket_name" {
    value = aws_s3_bucket.static-website-project.bucket
}

output "s3_bucket_website_endpoint" {
    value = aws_s3_bucket_website_configuration.static-website-project.website_endpoint
}