variable "region" {
    description = "AWS region to deploy the static website"
    type = string
    default = "ap-south-1"
}

variable "bucket_name" {
    description = "Name of S3 bucket to host the static website."
    type = string
    default = "project-static-website"
}