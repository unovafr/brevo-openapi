# Brevo::AddContactToList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** | Emails to add to a list. You can pass a maximum of 150 emails for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] |
| **ids** | **Array&lt;Integer&gt;** | IDs to add to a list. You can pass a maximum of 150 IDs for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::AddContactToList.new(
  emails: null,
  ids: null
)
```

