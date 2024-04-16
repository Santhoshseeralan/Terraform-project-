resource "aws_instance" "example" {
  ami           = "your_ami_id"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.instance_sg.name]
}
