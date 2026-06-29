output "vpc_id" {
    description = "The ID of the VPC."
    value = data.aws_vpc.vpc.id
}

output "subnet_id" {
    description = "The ID of the subnet."
    value = data.aws_subnet.subnet.id
}

output "instance_id" {
    description = "The ID of the EC2 instance."
    value = aws_instance.ec2-instance.id
}