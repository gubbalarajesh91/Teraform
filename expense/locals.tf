# locals {
#     record_name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
#     record_value = var.instance_names[count.index] == "frontend" ? [aws_instance.Expense[count.index].public_ip] : [aws_instance.Expense[count.index].private_ip]
# }

#local count.index not work
#count.index will work if there is count = "number" available in same .tf file
#record_value = var.instance_names[count.index] == "frontend" ? [aws_instance.Expense[count.index].public_ip] : [aws_instance.Expense[count.index].private_ip]

#[aws_instance.Expense[count.index].public_ip]--- Resource count