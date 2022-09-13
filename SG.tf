resource "aws_security_group" "tf_sg" {
    name = "new"
    description ="new"
    vpc_id = "${aws_vpc.tf-vpc.id}"


    #inbound rules
    # HTTPS access from anywhere
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        self = false
    }
    
    # http access  from anywhere
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        self = false
    }

    #ssh access from anywhere
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        self = false
    }

    #web server acces from anywhere
    ingress = {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        self = false
    }

    # Outbound Rules 
    # Internet access to anywhere 
     egress { 
        from_port = 0 
        to_port = 0 
        protocol = "-1" 
        cidr_blocks = ["0.0.0.0/0"] 
        self = false
    } 
    tags = { 
        Name = "Web SG" 
    } 
}