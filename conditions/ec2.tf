resource "aws_instance" "db" {
  ami = var.image_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  #instance_type = "t3.micro"
  instance_type = var.instance_type == "db" ? "t3.small" : "t3.micro"
  #leftsdie keys are arguments and right side are values

  
  
}