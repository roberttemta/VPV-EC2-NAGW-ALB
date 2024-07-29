
# display the outputs

output "alb-dns-link" {
  value = aws_lb.load-balancer.dns_name
}


output "server1-public-ip" {
  value = aws_instance.server1.public_ip
}

output "server2-public-ip" {
  value = aws_instance.server2.public_ip
}

output "server1-private-ip" {
  value = aws_instance.server1.private_ip
}

output "server2-private-ip" {
  value = aws_instance.server2.private_ip
}

/*
output "ssh" {
  value = "ssh -i ${aws_instance.server1.key_name} ec2-user@${aws_instance.server1.public_ip}"
}
*/