resource "aws_instance" "mechine" {
  ami           = "${lookup(var.AmiLinux, var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.PublicAZA.id}"
  vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"]
  key_name = "${var.key_name}"
  tags {
        Name = "mechine"
  }
  user_data = <<HEREDOC
  #!/bin/bash
  yum update -y
  yum install -y httpd24
  service httpd start
  chkconfig httpd on  
HEREDOC
}
