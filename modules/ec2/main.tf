
resource "aws_instance" "test_instance" {
  ami = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
  subnet_id = var.instance_subnet_id
  tags = {
    Name = "${var.instance_name}"
  }
}
