resource "aws_route53_record" "expense" {
  #count = length(var.instance_names)
  for_each = aws_instance.Expense
  zone_id = var.zone_id
  name = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  #name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #Interpolation "Hello, ${var.name}!"
  
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  #records = var.instance_names[count.index] == "frontend" ? [aws_instance.Expense[count.index].public_ip] : [aws_instance.Expense[count.index].private_ip]
  allow_overwrite = true #if records already exist this will overwite
}