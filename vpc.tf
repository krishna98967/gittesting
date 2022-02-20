resource "aws_vpc" "VPC" {
  cidr_block           = var.cidr_block
  enable_dns_support   = "true" #gives you an internal domain name
  enable_dns_hostnames = "true" #gives you an internal host name
  enable_classiclink   = "false"
  tags = {
    Name      = var.vpcname
    owner     = "krishnareddy"
    operation = "production"
  }
}



resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = "superman"
  }
}