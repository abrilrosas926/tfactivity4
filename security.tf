resource "aws_security_group" "aprilsg" {
    vpc_id = aws_vpc.vpcapril1.vpc_id

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    from_port = 0
    to_port = 0
    protocol = "-1" #allow all
    cidr_blocks = ["0.0.0.0/0"]

}

tags = {
    name = "aprilsg"
}
}