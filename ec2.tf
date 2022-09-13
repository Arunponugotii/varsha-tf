# creating 1st ec2 instance in public subnet
resource "aws_instance" "tf-ec2" {
    ami = "ami-06489866022e12a14"
    instance_type = "t2.micro"
    count = 1
    key_name = "test"
    vpc_security_group_ids = ["${aws_security_group.tf_sg.id}"]
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    associate_public_ip_address = true
    user_data = "${file("userData.sh")}"
    tags = {
        Name = "my food instance"
    }
  
}

#creating new ec2 instance in public subnet
resource "aws_instance" "nametf-ec2" {
    ami = "ami-06489866022e12a14"
    instance_type = "t2.micro"
    count = 1
    key_name = "test"
    vpc_security_group_ids = ["${aws_security_group.tf_sg.id}"]
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    associate_public_ip_address = true
    user_data = "${file("userdata1.sh")}"
    tags = {
        Name = "my ecom instance"
    }


  
}