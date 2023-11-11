resource "aws_eip" "this_nat_eip" {
  vpc = true
  tags = {
    Name = "${var.environment}-nat-gw-eip"
  }
}
