resource "aws_instance" "dbInstance" {
  ami                        = "ami-0451f2687182e0411"
  instance_type              = "t2.micro"
  subnet_id                  = aws_subnet.public_subnet.id
  security_groups            = [aws_security_group.instance_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "dbInstance"
  }
}










