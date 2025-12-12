resource "aws_instance" "webserver" {
  ami                         = "ami-0fa3fe0fa7920f68e"
  instance_type               = "t3.micro"

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "webserver"
  }
}
