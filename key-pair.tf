/*

resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Create the Key Pair in aws
resource "aws_key_pair" "aws_key" {
  key_name   = "utc-app2_key"
  public_key = tls_private_key.ec2_key.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "utc-app2_key.pem"
  content  = tls_private_key.ec2_key.private_key_pem
}

*/
