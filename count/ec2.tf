#resource <resource-type> <resource-name>
resource "aws_instance" "db" {
  ami           = "ami-090252cbe067a9e58"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type = "t3.micro"

  tags = {
    Name = "db"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-090252cbe067a9e58"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type = "t3.micro"

  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
