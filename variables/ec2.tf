#1. Command line 
#2.tfvars [mention file name if its not terrform.tfvars
#terraform apply -var-file="testing.tfvars"
#3. ENV variable
#export TF_VAR_image_id=ami-abc123
#export TF_VAR_instance_type=t3.large
#4. variable default

#terraform plan
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
    name = var.sg_name
    description = var.sg_description

    #blocked map
    ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
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

#command line variables
#terraform plan -var="instance_type=t3.small"
#no spaces in var for command line