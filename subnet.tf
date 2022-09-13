#creating subnet
resource "aws_subnet" "public-subnet-1" {
    vpc_id = "${aws_vpc.tf-vpc.id}"
    cidr_block = "192.168.10.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1a"
    tags = {
        Name = " tf-sn-1a"
    }
}
#creating subnet
resource "aws_subnet" "public-subnet-2" {
    vpc_id = "${aws_vpc.tf-vpc.id}"
    cidr_block = "192.168.20.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1b"
    tags = {
        Name = " tf-sn-1b"

    }
}


#creating subnet
resource "aws_subnet" "Private-subnet-2" {
    vpc_id = "${aws_vpc.tf-vpc.id}"
    cidr_block = "192.168.30.0/24"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1a"
    tags = {
      Name = "tf-sn-2a"
    }
  
}
#creating subnet
resource "aws_subnet" "Private-subnet-3" {
    vpc_id = "${aws_vpc.tf-vpc.id}"
    cidr_block = "192.168.40.0/24"
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1b"
    tags = {
      Name = "tf-sn-2b"
    }
  
}

