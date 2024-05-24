# Brevo::RemoveContactFromListByEmails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** | **Required if &#39;all&#39; is false and &#39;ids&#39; is empty.** Emails to remove from a list. You can pass a **maximum of 150 emails** for removal in one request.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::RemoveContactFromListByEmails.new(
  emails: null
)
```

