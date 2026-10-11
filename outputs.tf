output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_teams.teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_lookup_filter_keyword" {
  description = "Map of filter_keyword values across all teams_lookup, keyed the same as var.teams_lookup except keys with no filter_keyword are omitted"
  value       = { for k, v in data.datadog_teams.teams_lookup : k => v.filter_keyword if v.filter_keyword != null && length(v.filter_keyword) > 0 }
}
output "teams_lookup_filter_me" {
  description = "Map of filter_me values across all teams_lookup, keyed the same as var.teams_lookup except keys with no filter_me are omitted"
  value       = { for k, v in data.datadog_teams.teams_lookup : k => v.filter_me if v.filter_me != null }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup except keys with no teams are omitted"
  value       = { for k, v in data.datadog_teams.teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

