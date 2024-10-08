
#creating the instance 1
resource "aws_instance" "server1" {
  ami           = "ami-03972092c42e8c0ca"  
  instance_type = "t2.micro"
  //key_name      = aws_key_pair.aws_key.key_name
  user_data              = file("server-install.sh")
  vpc_security_group_ids = [aws_security_group.sg-inst.id]
  subnet_id              = aws_subnet.public1.id
  associate_public_ip_address = true
  availability_zone      = "us-east-1a"

  tags = {
    Name = "alb-vpc-instance1"
  }
}


#creating the instance 1

resource "aws_instance" "server2" {
  ami           = "ami-03972092c42e8c0ca"
  instance_type = "t2.micro"
  //key_name      = aws_key_pair.aws_key.key_name
  user_data              = file("server-install.sh")
  vpc_security_group_ids = [aws_security_group.sg-inst.id]
  subnet_id              = aws_subnet.public2.id
  associate_public_ip_address = true
  availability_zone      = "us-east-1b"

  tags = {
    Name = "alb-vpc-instance2"
  }
}