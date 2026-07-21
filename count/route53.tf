resource "aws_route53_record" "roboshop" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance[count.index]}.${var.domain_name}"
  type    = "NS"
  ttl     = "1"
  records = [aws_instance.example[count.index].private_ip]
}