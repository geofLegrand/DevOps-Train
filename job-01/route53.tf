
resource "aws_route53_record" "rc1" {
  zone_id = var.zone_id
  type = "A"
  ttl = 300
  name = var.name

  records = [aws_instance.web_server.public_ip]
}

output "dns" {
  value = aws_route53_record.rc1.name
}