# resource "aws_route53_record" "expense" {
#   zone_id = aws_route53_zone.primary.zone_id
#   name    = "www.example.com"
#   type    = "A"
#   ttl     = 1
#   records = [aws_eip.lb.public_ip]
# }