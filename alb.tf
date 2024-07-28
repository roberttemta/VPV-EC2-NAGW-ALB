
resource "aws_lb_target_group" "target1" {
  name     = "ALb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc1.id

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 100
    matcher             = 200
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 6
    unhealthy_threshold = 3
  }
}

resource "aws_lb_target_group_attachment" "atg" {
  target_group_arn = aws_lb_target_group.target1.arn
  target_id        = aws_instance.server1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "atg1" {
  target_group_arn = aws_lb_target_group.target1.arn
  target_id        = aws_instance.server2.id
  port             = 80
}

resource "aws_lb_listener" "lt1" {
  load_balancer_arn = aws_lb.load-balnacer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target1.arn

  }
}


resource "aws_lb" "load-balnacer" {
  name                       = "albproject"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.sg-alb.id]
  subnets                    = [aws_subnet.public1.id, aws_subnet.public2.id]
  enable_deletion_protection = false
}