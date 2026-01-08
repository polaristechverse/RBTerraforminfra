resource "aws_vpc" "demovpc" {
  cidr_block = "10.12.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "DemoGIT-VPC"
  }
}

resource "aws_subnet" "demosubnet-1" {
  vpc_id = aws_vpc.demovpc.id
  cidr_block = "10.12.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  tags = {
    "Name" = "DemoGIT-Subnet-1"
  }
}

resource "aws_subnet" "demosubnet-2" {
  vpc_id = aws_vpc.demovpc.id
  cidr_block = "10.12.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"
  tags = {
    "Name" = "DemoGIT-Subnet-2"
  }
}

resource "aws_internet_gateway" "DemoIGW" {
  vpc_id = aws_vpc.demovpc.id
  tags = {
    Name = "DemoGIT-IGW"
  }
}