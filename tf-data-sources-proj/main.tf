data "aws_vpc" "vpc" {
    tags = {
        Name = "Custom-VPC"
    }
}

data "aws_subnet" "subnet" {
    filter {
        name = "tag:Name"
        values = ["Public-Subnet"]
    } 
    filter {
        name = "vpc-id"
        values = [data.aws_vpc.vpc.id]
    }
}

resource "aws_instance" "ec2-instance" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    subnet_id =  data.aws_subnet.subnet.id

    tags = {
        Name = "EC2-Instance"
    }
}