resource "aws_instance" "state-management" {
  ami           = "ami-0db56f446d44f2f09"
  instance_type = "t3.micro"

  tags = {
    Name = "State Management"
  }
}