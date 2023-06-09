#creating ssh-key
resource "aws_key_pair" "terra-key" {
  key_name   = "jenkins-key"
  public_key = file("${path.module}/id_rsa.pub")
}

output "keyname" {
  value = aws_key_pair.terra-key.key_name
}

