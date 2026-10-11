data "aws_waf_ipset" "waf_ipset_lookup" {
  for_each = var.waf_ipset_lookup

  name = each.value.name
}

