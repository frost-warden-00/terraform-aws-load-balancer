data "aws_acm_certificate" "issued" {
  domain   = "*.hello.com" # Should be a variable
  statuses = ["ISSUED"]
}

data "aws_vpc" "targetVpc" {
  filter {
    name   = "tag-value"
    values = [var.vpc_name]
  }
  filter {
    name   = "tag-key"
    values = ["Name"]
  }
}