# Brevo::AddContactToListByIDs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | IDs to add to a list. You can pass a **maximum of 150 IDs** for addition in one request. **_If you need to add the emails in bulk, please prefer /contacts/import api._**  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::AddContactToListByIDs.new(
  ids: null
)
```

