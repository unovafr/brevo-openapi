# Brevo::GetCampaignOverview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the campaign |  |
| **name** | **String** | Name of the campaign |  |
| **subject** | **String** | Subject of the campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;false&#x60; | [optional] |
| **preview_text** | **String** | Preview text or preheader of the email campaign | [optional] |
| **type** | **String** | Type of campaign |  |
| **status** | **String** | Status of the campaign |  |
| **scheduled_at** | **String** | UTC date-time on which campaign is scheduled (YYYY-MM-DDTHH:mm:ss.SSSZ) | [optional] |
| **ab_testing** | **Boolean** | Status of A/B Test for the campaign. abTesting &#x3D; false means it is disabled, &amp; abTesting &#x3D; true means it is enabled. | [optional] |
| **subject_a** | **String** | Subject A of the ab-test campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] |
| **subject_b** | **String** | Subject B of the ab-test campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] |
| **split_rule** | **Integer** | The size of your ab-test groups. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] |
| **winner_criteria** | **String** | Criteria for the winning version. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] |
| **winner_delay** | **Integer** | The duration of the test in hours at the end of which the winning version will be sent. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] |
| **send_at_best_time** | **Boolean** | It is true if you have chosen to send your campaign at best time, otherwise it is false | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCampaignOverview.new(
  id: 12,
  name: EN - Sales Summer 2017,
  subject: 20% OFF for 2017 Summer Sales,
  preview_text: Thanks for your order!,
  type: classic,
  status: sent,
  scheduled_at: 2017-06-01T12:30:00Z,
  ab_testing: true,
  subject_a: Discover the New Collection!,
  subject_b: Want to discover the New Collection?,
  split_rule: 25,
  winner_criteria: open,
  winner_delay: 50,
  send_at_best_time: true
)
```

