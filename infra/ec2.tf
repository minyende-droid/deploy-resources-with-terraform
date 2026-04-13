resource "aws_instance" "web" {
  ami           = "ami-080254318c2d8932f" # for eu-north-1
  instance_type = var.instance_type

  subnet_id = aws_subnet.public_1.id # ✅ MUST be public

  key_name = var.key_name

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "Terraform-EC2"
  }
}