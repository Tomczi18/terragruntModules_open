resource "aws_instance" "this" {
  ami           = data.aws_ami.amazon-linux2.id
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_ids[count.index]
  count         = length(var.private_subnet_ids)
  key_name      = var.instance_keypair


  vpc_security_group_ids = [aws_security_group.ec2_private_sg.id]

  tags = {
    Name = "${var.env}-ec2-private-${count.index}"
  }
}
