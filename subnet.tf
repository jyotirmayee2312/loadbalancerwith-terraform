resource "aws_subnet" "public_subnet" {
 vpc_id    = aws_vpc.custom_vpc.id
 cidr_block = "10.0.1.0/24"
 map_public_ip_on_launch = true
 availability_zone = "ap-south-1a"

 tags = {
   Name = "public_subnet"
 }
}

resource "aws_subnet" "private_subnet" {
 vpc_id    = aws_vpc.custom_vpc.id
 cidr_block = "10.0.2.0/24"
 availability_zone = "ap-south-1a"

 tags = {
   Name = "private_subnet"
 }
}

resource "aws_subnet" "public_subnet2" {
 vpc_id    = aws_vpc.custom_vpc.id
 cidr_block = "10.0.3.0/24"
 availability_zone = "ap-south-1b"

 tags = {
  Name = "public-subnet-2"
 }
}

