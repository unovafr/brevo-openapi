# Brevo::GetTransacAggregatedSmsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Time frame of the report |  |
| **requests** | **Integer** | Number of requests for the timeframe |  |
| **delivered** | **Integer** | Number of delivered SMS for the timeframe |  |
| **hard_bounces** | **Integer** | Number of hardbounces for the timeframe |  |
| **soft_bounces** | **Integer** | Number of softbounces for the timeframe |  |
| **blocked** | **Integer** | Number of blocked contact for the timeframe |  |
| **unsubscribed** | **Integer** | Number of unsubscription for the timeframe |  |
| **replied** | **Integer** | Number of answered SMS for the timeframe |  |
| **accepted** | **Integer** | Number of accepted for the timeframe |  |
| **rejected** | **Integer** | Number of rejected for the timeframe |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacAggregatedSmsReport.new(
  range: 2016-09-08|2017-04-06,
  requests: 263,
  delivered: 249,
  hard_bounces: 1,
  soft_bounces: 4,
  blocked: 2,
  unsubscribed: 6,
  replied: 12,
  accepted: 252,
  rejected: 8
)
```

