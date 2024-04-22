# Brevo::GetContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | [**Array&lt;GetContactDetails&gt;**](GetContactDetails.md) |  |  |
| **count** | **Integer** | Number of contacts |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContacts.new(
  contacts: null,
  count: 17655
)
```

