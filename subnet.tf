resource "aws_subnet" "public_subnet1" {
    vpc_id = "${aws_vpc.VPC.id}"

    cidr_block = "10.60.1.0/24"
    availability_zone = "us-east-1a"

    tags ={
        Name = "Public Subnet1"
    }
}