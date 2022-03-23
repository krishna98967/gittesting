resource "aws_route_table" "public_route" {
    vpc_id = "${aws_vpc.VPC.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.IGW.id}"
    }

    tags = {
        Name = "public -test-Route"
    }
}

resource "aws_route_table_association" "routing" {
    subnet_id = "${aws_subnet.public_subnet1.id}"
    route_table_id = "${aws_route_table.public_route.id}"
}
