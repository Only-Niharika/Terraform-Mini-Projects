resource "aws_instance" "Myserver" {
    ami ="ami-0db56f446d44f2f09"
    instance_type = "t3.small"

    tags={
        Name="sample-server"
    }
}
