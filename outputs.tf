output "waf_ipset_lookup_id" {
  description = "Map of id values across all waf_ipset_lookup, keyed the same as var.waf_ipset_lookup"
  value       = { for k, v in data.aws_waf_ipset.waf_ipset_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_ipset_lookup_name" {
  description = "Map of name values across all waf_ipset_lookup, keyed the same as var.waf_ipset_lookup"
  value       = { for k, v in data.aws_waf_ipset.waf_ipset_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

