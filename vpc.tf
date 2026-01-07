resource "aws_vpc" "demovpc" {
  cidr_block = "10.12.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "DemoGIT-VPC"
  }
}