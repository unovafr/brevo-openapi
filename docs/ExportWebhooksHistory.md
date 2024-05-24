# Brevo::ExportWebhooksHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Number of days in the past including today (positive integer). _Not compatible with &#39;startDate&#39; and &#39;endDate&#39;_ | [optional] |
| **start_date** | **String** | Mandatory if endDate is used. Starting date of the history (YYYY-MM-DD). Must be lower than equal to endDate | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] |
| **sort** | **String** | Sorting order of records (asc or desc) | [optional] |
| **type** | **String** | Filter the history based on webhook type |  |
| **event** | **String** | Filter the history for a specific event type |  |
| **notify_url** | **String** | Webhook URL to receive CSV file link |  |
| **webhook_id** | **Integer** | Filter the history for a specific webhook id | [optional] |
| **email** | **String** | Filter the history for a specific email | [optional] |
| **message_id** | **Integer** | Filter the history for a specific message id. Applicable only for transactional webhooks. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ExportWebhooksHistory.new(
  days: 7,
  start_date: 2023-02-13,
  end_date: 2023-02-17,
  sort: desc,
  type: transactional,
  event: request,
  notify_url: https://brevo.com,
  webhook_id: 2345,
  email: example@brevo.com,
  message_id: null
)
```

