resource "aws_instance" "this" {
  ami                    = data.aws_ami.amazon-linux2.id
  instance_type          = var.instance_type
  subnet_id              = var.ec2_bastion_subnet_id
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.ec2_bastion_sg.id]

  tags = {
    Name = "${var.env}-ec2-bastion"
  }
}
