#This should not be needed, right?
connection: "pb_n_jays_postgres"

include: "*.view"

case_sensitive: no

datagroup: nightly {
  sql_trigger: SELECT TIMEZONE('US/Pacific',GETDATE())::DATE;;
}

persist_with: nightly

## Google Adwords ##
explore: adwords_ad_performance_reports_config {
  extends: [adwords_ad_performance_reports_core]
  extension: required
}

explore: adwords_campaign_performance_reports_config {
  extends: [adwords_campaign_performance_reports_core]
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
explore: combined_ads_compare_config {
  extends: [combined_ads_compare_core]
  extension: required
}
