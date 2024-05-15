resource "aws_instance" "Expense" {
  for_each = var.instance_names
  #count = length(var.instance_names)  
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-064e5048c7eb6590f"]
  #instance_type = "t3.micro"
  instance_type = each.value
  #leftsdie keys are arguments and right side are values

  tags = merge(
    var.common_tags,
    {
        Name = each.key
        Module = each.key
    }
  )
  
}