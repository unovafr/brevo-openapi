# Brevo::GetTransacEmailsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Total number of transactional emails available on your account according to the passed filter | [optional] |
| **transactional_emails** | [**Array&lt;GetTransacEmailsListTransactionalEmailsInner&gt;**](GetTransacEmailsListTransactionalEmailsInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacEmailsList.new(
  count: 5,
  transactional_emails: null
)
```

