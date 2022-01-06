provider "aws" {
  region = "us-east-2"
}
resource "aws_lb" "test" {
  name               = var.name_lb
  internal           = false
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_groups
  subnets            = var.subnets
}
depends_on =[ 
    aws_launch_template.alt.id
 ]

resource "aws_lb_target_group" "test" {
  name     = var.name_TG
  port     = 80
  protocol = var.protocol
  vpc_id   = var.vpc_id
}
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = "80"
  protocol          = var.protocol
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}

 