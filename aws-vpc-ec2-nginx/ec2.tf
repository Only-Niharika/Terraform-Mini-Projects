resource "aws_instance" "nginxserver" {
    ami = "ami-01a00762f46d584a1"
    instance_type = "t3.micro"
    subnet_id = aws_subnet.public-subnet.id
    vpc_security_group_ids = [aws_security_group.nginx-sg.id]
    associate_public_ip_address = true

    user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo apt upgrade -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                EOF

    tags = {
        Name = "NginxServer"
    }
}