resource "aws_instance" "db" {
  ami = "ami-090252cbe067a9e58"
  vpc_security_group_ids = ["sg-064e5048c7eb6590f"]
  instance_type = "t3.micro"

  tags = {
    Name = "db"
  }
}