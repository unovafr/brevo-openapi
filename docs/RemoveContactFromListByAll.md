# Brevo::RemoveContactFromListByAll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all** | **Boolean** | **Required if &#39;emails&#39; and &#39;ids&#39; are empty.** Remove all existing contacts from a list. A process will be created in this scenario. You can fetch the process details to know about the progress  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::RemoveContactFromListByAll.new(
  all: true
)
```

