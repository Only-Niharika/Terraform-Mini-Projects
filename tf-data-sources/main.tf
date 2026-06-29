data "aws_ami" "name"{
    most_recent = true
    owners = ["amazon"]
}

output "ami_id" {
    value = data.aws_ami.name.id
}

resource "aws_instance" "myserver" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"

    tags = {
        Name = "MyServer"
    }
} 