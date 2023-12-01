resource "aws_network_acl" "private_nacl" {
 vpc_id = aws_vpc.custom_vpc.id

 egress {
  rule_no   = 100
  action    = "allow"
  protocol  = "6"
  cidr_block = "0.0.0.0/0"
  from_port = 80
  to_port   = 80
 }

 egress {
  rule_no   = 200
  action    = "allow"
  protocol  = "6"
  cidr_block = "0.0.0.0/0"
  from_port = 443
  to_port   = 443
 }

 ingress {
  rule_no   = 100
  action    = "allow"
  protocol  = "6"
  cidr_block = "0.0.0.0/0"
  from_port = 80
  to_port   = 80
 }

 ingress {
  rule_no   = 200
  action    = "allow"
  protocol  = "6"
  cidr_block = "0.0.0.0/0"
  from_port = 443
  to_port   = 443
 }

 tags = {
  Name = "private_nacl"
 }
}
