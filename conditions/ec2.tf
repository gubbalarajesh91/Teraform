resource "aws_instance" "db" {
  ami = var.image_id

  #instance_type = "t3.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  #leftsdie keys are arguments and right side are values

  
  
}