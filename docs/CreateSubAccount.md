# Brevo::CreateSubAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | Set the name of the sub-account company |  |
| **email** | **String** | Email address for the organization |  |
| **language** | **String** | Set the language of the sub-account | [optional] |
| **timezone** | **String** | Set the timezone of the sub-account | [optional] |
| **group_ids** | **Array&lt;String&gt;** | Set the group(s) for the sub-account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateSubAccount.new(
  company_name: null,
  email: null,
  language: null,
  timezone: null,
  group_ids: null
)
```

