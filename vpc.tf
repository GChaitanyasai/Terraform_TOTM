resource "aws_vpc" "" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_internet_gateway" "" {
  vpc_id = aws_vpc..id
  tags = {
    Name = "${var.vpc_IGW}"
  }
}