#This should not be needed, right?
connection: "pb_n_jays_postgres"

include: "*.view"

case_sensitive: no

datagroup: nightly {
  sql_trigger: SELECT TIMEZONE('US/Pacific',GETDATE())::DATE;;
}

persist_with: nightly

## Google Adwords ##
explore: ad_performance_reports_config {
  extends: [ad_performance_reports_core]
  extension: required
}

explore: campaign_performance_reports_config {
  extends: [campaign_performance_reports_config_core]
  extension: required
}

## Facebook Ads ##
explore: facebook_ads_config {
  extends: [facebook_ads_core]
  extension: required
}

explore: facebook_insights_config {
  extends: [facebook_insights_core]
  extension: required
}

## Facebook Ads and Google Adwords Comparison ##
explore: ads_compare_config {
  extends: [ads_compare_core]
  extension: required
}
