variable "teams_lookup" {
  description = <<EOT
Map of teams_lookup, attributes below
Optional:
    - filter_keyword
    - filter_me
EOT

  type = map(object({
    filter_keyword = optional(string)
    filter_me      = optional(bool)
  }))
}

