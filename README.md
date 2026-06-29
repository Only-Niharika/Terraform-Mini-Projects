# Terraform AWS Mini Projects

This repository contains a collection of small Terraform projects for practicing AWS infrastructure provisioning. Each folder is an independent mini project and can be initialized, planned, applied, and destroyed separately.

## Projects

| Folder | Description |
| --- | --- |
| `aws-ec2` | Creates a basic AWS EC2 instance. |
| `aws-s3` | Creates an S3 bucket with a sample uploaded object. |
| `aws-vpc` | Creates a VPC, public/private subnets, internet gateway, route table, and an EC2 instance. |
| `aws-vpc-ec2-nginx` | Creates a VPC setup and launches an EC2 instance with Nginx installed using user data. |
| `proj-static-website` | Hosts a static website on S3 using `index.html` and `style.css`. |
| `state-management` | Demonstrates Terraform state usage with an EC2 resource. |
| `tf-data-sources` | Demonstrates Terraform data sources and creates an EC2 instance. |
| `tf-data-sources-proj` | Demonstrates a data-source based project with a separate setup folder. |

## Prerequisites

- Terraform installed
- AWS CLI installed and configured
- An AWS account with required permissions
- Valid AWS credentials configured locally

Configure AWS credentials before running Terraform:

```bash
aws configure
```

## How To Use

Go into any mini project folder:

```bash
cd aws-ec2
```

Initialize Terraform:

```bash
terraform init
```

Preview the changes:

```bash
terraform plan
```

Create the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure when finished:

```bash
terraform destroy
```

## Repository Notes

- Terraform provider binaries inside `.terraform/` are ignored.
- Terraform state files such as `terraform.tfstate` and `terraform.tfstate.backup` are ignored.
- The `.terraform.lock.hcl` files are committed so provider versions remain consistent.
- Do not commit `.env` files or AWS credentials.

## Important

Some resources may create AWS charges. Always run `terraform destroy` after testing if you no longer need the infrastructure.
