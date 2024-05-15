#

# resource "aws_instance" "db" {
#   ami = "ami-090252cbe067a9e58"
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
#   instance_type = "t3.micro"

#   tags = {
#     Name = "db"
#   }
# }

resource "aws_security_group" "allow_ports" {
    name = "allow_ssh"
    description = "allowing 22,80,8080,3306 access"

    dynamic "ingress" {
        for_each = var.inbound_port_rules
        content {
            from_port        = ingress.value["port"]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["allow_cidr"]
          
        }
            # from_port        = 22
            # to_port          = 22 
            # protocol         = "tcp"
            # cidr_blocks      = ["0.0.0.0/0"]
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

