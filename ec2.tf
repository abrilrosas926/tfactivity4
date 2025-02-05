resource "aws_instance" "aprilec2" {
    ami = "ami-0c614dee691cbbf37"
    provider = aws.east1
    instance_type = "t2.micro"
    key_name = "aprilkeypair"
    subnet_id = aws_subnet.subnet1.vpc_id
    security_groups = [aws_security_group.aprilsg.name]
    tags = {
        Name = "AprilEC2"
    }
}