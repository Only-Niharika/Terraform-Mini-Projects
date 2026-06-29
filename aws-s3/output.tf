output "id" {
    value = random_id.rand-id.hex
}

output "bucket_name" {
    value = aws_s3_bucket.demo-bucket.bucket
}