data "datadog_teams" "teams_lookup" {
  for_each = var.teams_lookup

  filter_keyword = each.value.filter_keyword
  filter_me      = each.value.filter_me
}

