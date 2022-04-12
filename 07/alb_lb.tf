resource "aws_lb" "test" {
  name                       = "test-lb-tf"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.lb.id]
  subnets                    = toset(data.aws_subnets.main.ids)
  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}
