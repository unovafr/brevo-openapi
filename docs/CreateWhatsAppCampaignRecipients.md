# Brevo::CreateWhatsAppCampaignRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **excluded_list_ids** | **Array&lt;Integer&gt;** | List ids to exclude from the campaign | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | **Mandatory if scheduledAt is not empty**. List Ids to send the campaign to  | [optional] |
| **segments** | **Array&lt;Integer&gt;** | **Mandatory if listIds are not used**. Segment ids to send the campaign to.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateWhatsAppCampaignRecipients.new(
  excluded_list_ids: null,
  list_ids: null,
  segments: null
)
```

