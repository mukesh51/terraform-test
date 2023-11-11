resource "aws_security_group" "this_default_sg" {
  name        = "${var.environment}-default-sg"
  description = "Default security group"
  vpc_id      = aws_vpc.this_vpc.id
  depends_on  = [aws_vpc.this_vpc]
  tags = {
    Name = "${var.environment}-default-sg"
  }
}
