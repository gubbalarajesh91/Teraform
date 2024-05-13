resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  #name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #Interpolation "Hello, ${var.name}!"
  name = local.record_name
  type    = "A"
  ttl     = 1
  records = local.record_value
  allow_overwrite = true #if records already exist this will overwite
}