locals {
  
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-064e5048c7eb6590f"
  #instance_type = "t3.micro"
  instance_type = var.instanse_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "locals"
  }
}