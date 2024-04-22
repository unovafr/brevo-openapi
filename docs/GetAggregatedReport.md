# Brevo::GetAggregatedReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Time frame of the report |  |
| **requests** | **Integer** | Number of requests for the timeframe |  |
| **delivered** | **Integer** | Number of delivered emails for the timeframe |  |
| **hard_bounces** | **Integer** | Number of hardbounces for the timeframe |  |
| **soft_bounces** | **Integer** | Number of softbounces for the timeframe |  |
| **clicks** | **Integer** | Number of clicks for the timeframe |  |
| **unique_clicks** | **Integer** | Number of unique clicks for the timeframe |  |
| **opens** | **Integer** | Number of openings for the timeframe |  |
| **unique_opens** | **Integer** | Number of unique openings for the timeframe |  |
| **spam_reports** | **Integer** | Number of complaint (spam report) for the timeframe |  |
| **blocked** | **Integer** | Number of blocked contact emails for the timeframe |  |
| **invalid** | **Integer** | Number of invalid emails for the timeframe |  |
| **unsubscribed** | **Integer** | Number of unsubscribed emails for the timeframe |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAggregatedReport.new(
  range: 2016-09-08|2017-04-06,
  requests: 263,
  delivered: 249,
  hard_bounces: 1,
  soft_bounces: 4,
  clicks: 12,
  unique_clicks: 8,
  opens: 47,
  unique_opens: 37,
  spam_reports: 0,
  blocked: 2,
  invalid: 0,
  unsubscribed: 0
)
```

