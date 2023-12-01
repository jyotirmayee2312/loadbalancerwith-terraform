resource "aws_instance" "private_instance" {
 ami       = "ami-02a2af70a66af6dfb" # This is an example AMI ID. You should replace it with the actual AMI ID.
 instance_type = "t2.micro"
 key_name  = "my_key_pair" # This is an example key pair name. You should replace it with the actual key pair name.
 vpc_security_group_ids = ["${aws_security_group.my_security_group.id}"] # This is an example security group ID. You should replace it with the actual security group ID.
 subnet_id = aws_subnet.private_subnet.id

 user_data = <<-EOF
            #!/bin/bash
            sudo apt-get update -y
            sudo apt-get install -y apache2
            sudo systemctl start apache2
            echo "Hello, World!" > /var/www/html/index.html
            EOF

 tags = {
 Name = "private_instance"
 }
}
