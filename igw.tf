resource "aws_internet_gateway" "this_igw" {
  vpc_id = aws_vpc.this_vpc.id

  tags = {
    Name = "${var.environment}-igw"
  }

}
