# resource <resorce-type <resource-name>

resource "aws_instance" "db" {
  ami = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  #instance_type = "t3.micro"
  instance_type = var.instance_type
  #leftsdie keys are arguments and right side are values

  tags = var.tags
  
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh access"
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
    }

    egress {
    from_port        = 0 #from 0 to 0 means, opening all protocols
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
    }

    tags = {
        Name ="allow_ssh"
        Createdby = "Rajesh"
    }

}

