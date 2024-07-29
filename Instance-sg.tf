
# Creating the security group

resource "aws_security_group" "server-alb" {

  description = "allow htppd"
  vpc_id      = aws_vpc.vpc1.id


  ingress {
    description = "allow http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    //cidr_blocks = ["0.0.0.0/0"]
    security_groups = [aws_security_group.sg-alb.id]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    env  = "Dev"
    name = "Instance-sg"
  }

  depends_on = [aws_vpc.vpc1, aws_security_group.sg-alb]

}




