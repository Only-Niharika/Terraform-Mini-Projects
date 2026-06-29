resource "aws_vpc" "custom-vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "Custom-VPC"
    }
}

resource "aws_subnet" "subnet-public" {
    vpc_id = aws_vpc.custom-vpc.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "Public-Subnet"
    }
}
