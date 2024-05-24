# Brevo::SubAccountUpdatePlanRequestFeatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | **Integer** | Number of multi-users | [optional] |
| **landing_page** | **Integer** | Number of landing pages / Not required on ENTv2 | [optional] |
| **inbox** | **Integer** | Number of inboxes / Not required on ENTv2 | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountUpdatePlanRequestFeatures.new(
  users: null,
  landing_page: null,
  inbox: null
)
```

