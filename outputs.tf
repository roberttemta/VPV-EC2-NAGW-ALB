
# display the outputs
/*
output "public-ip" {
  value = aws_instance.server1.public_ip
}

output "ssh" {
  value = "ssh -i ${aws_instance.server1.key_name} ec2-user@${aws_instance.server1.public_ip}"
}
*/

output "alb-dns-link" {
  value = aws_lb.load-balnacer.dns_name
}