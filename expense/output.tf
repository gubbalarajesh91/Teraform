# output "public_ip" {
#     value = aws_instance.db.public_ip
  
# }
output "instance_info" {
    value = aws_instance.Expense
}

output "sg_group" {
    value = aws_security_group.allow_ssh
  
}