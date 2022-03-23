resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.VPC.id

  cidr_block        = "10.60.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-test-Subnet1"
  }
}

resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.VPC.id
  cidr_block        = "10.60.10.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet2"
  }

  depends_on = [

    aws_subnet.public_subnet1,
  ]
}
