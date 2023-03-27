
resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terra-key.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_req_ports_jenkins.id}"]
  user_data = file("script.sh")
  tags = {
    Name = var.aws_instance_name
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "instance_id" {
  value = aws_instance.web.id
}

output "public_dns" {
  value = aws_instance.web.public_dns
}
