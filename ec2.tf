resource "aws_instance" "public_instance" {
  ami           = var.myami
  instance_type = "t3.micro"
  key_name = "mytfkey"
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.mysg.id]
  tags = {
    Name = "public_instance"
  }
}


resource "aws_instance" "private_instance" {
  ami           = var.myami
  instance_type = "t3.micro"
  key_name = "mytfkey"
  subnet_id = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.mysg.id]
  tags = {
    Name = "private_instance"
  }
}