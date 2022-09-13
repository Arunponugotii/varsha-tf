#create interNetGateWay
resource "aws_internet_gateway" "tf_IGW" {
    vpc_id = "${aws_vpc.tf-vpc.id}"
  
}