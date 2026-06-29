variable "region" {
    description = "AWS region to deploy resources"
    type = string
    default = "ap-south-1"
}

variable "bucket_name" {
    description = "Name of the S3 bucket to create"
    type = string
    default = "my-demo-bucket-terraform"
}