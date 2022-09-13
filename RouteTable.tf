#creating route table
resource "aws_route_table" "tf-rt" {
    vpc_id = "${aws_vpc.tf-vpc.id}"


    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.tf_IGW.id}"
    }
    tags = {
        Name = "route to internet"
    }
}

#Associating route table
resource "aws_route_table_association" "rt1" {
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    route_table_id = aws_route_table.tf-rt.id
}
resource "aws_route_table_association" "rt2" {
    subnet_id = "${aws_subnet.public-subnet-2.id}"
    route_table_id = aws_route_table.tf-rt.id
}

