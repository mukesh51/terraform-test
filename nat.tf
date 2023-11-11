resource "aws_nat_gateway" "this_nat_gw" {
  subnet_id     = element(aws_subnet.this_public_subnets.*.id, 0)
  allocation_id = aws_eip.this_nat_eip.id
  depends_on    = [aws_subnet.this_public_subnets, aws_eip.this_nat_eip]

  tags = {
    Name = "${var.environment}-nat-gw"
  }
}
