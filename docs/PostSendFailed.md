# Brevo::PostSendFailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response code |  |
| **message** | **String** | Response message |  |
| **unexisting_emails** | **Array&lt;String&gt;** |  | [optional] |
| **without_list_emails** | **Array&lt;String&gt;** |  | [optional] |
| **black_listed_emails** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::PostSendFailed.new(
  code: null,
  message: The email could not be sent to all recipients,
  unexisting_emails: null,
  without_list_emails: null,
  black_listed_emails: null
)
```

