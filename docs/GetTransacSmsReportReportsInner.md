# Brevo::GetTransacSmsReportReportsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date for which statistics are retrieved | [optional] |
| **requests** | **Integer** | Number of requests for the date | [optional] |
| **delivered** | **Integer** | Number of delivered SMS for the date | [optional] |
| **hard_bounces** | **Integer** | Number of hardbounces for the date | [optional] |
| **soft_bounces** | **Integer** | Number of softbounces for the date | [optional] |
| **blocked** | **Integer** | Number of blocked contact for the date | [optional] |
| **unsubscribed** | **Integer** | Number of unsubscription for the date | [optional] |
| **replied** | **Integer** | Number of answered SMS for the date | [optional] |
| **accepted** | **Integer** | Number of accepted for the date | [optional] |
| **rejected** | **Integer** | Number of rejected for the date | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacSmsReportReportsInner.new(
  date: Fri Mar 17 01:00:00 CET 2017,
  requests: 87,
  delivered: 85,
  hard_bounces: 1,
  soft_bounces: 1,
  blocked: 0,
  unsubscribed: 1,
  replied: 2,
  accepted: 85,
  rejected: 1
)
```

