# Brevo::RemoveContactFromListByIDs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | **Required if &#39;all&#39; is false and &#39;emails&#39; is empty.** IDs to remove from a list. You can pass a **maximum of 150 IDs** for removal in one request.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::RemoveContactFromListByIDs.new(
  ids: null
)
```

