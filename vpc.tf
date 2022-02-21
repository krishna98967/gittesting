resource "aws_vpc" "VPC" {
  cidr_block           = "10.60.0.0/16"
  enable_dns_support   = "true" #gives you an internal domain name
  enable_dns_hostnames = "true" #gives you an internal host name
  enable_classiclink   = "false"
  tags = {
    Name      = "spiderman"
    owner     = "krishnareddy"
    operation = "production"
  }
}



