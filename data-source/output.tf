output "ami_details" {
  value = data.aws_ami.ami_id.id
}

output "vpc_info" {
    value = data.aws_vpc.default
  
}