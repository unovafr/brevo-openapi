# Brevo::CreateSmsCampaignRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_ids** | **Array&lt;Integer&gt;** | Lists Ids to send the campaign to. REQUIRED if scheduledAt is not empty |  |
| **exclusion_list_ids** | **Array&lt;Integer&gt;** | List ids which have to be excluded from a campaign | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateSmsCampaignRecipients.new(
  list_ids: null,
  exclusion_list_ids: null
)
```

