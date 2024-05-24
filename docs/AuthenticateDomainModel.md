# Brevo::AuthenticateDomainModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | Domain |  |
| **message** | **String** | Success message |  |

## Example

```ruby
require 'brevo'

instance = Brevo::AuthenticateDomainModel.new(
  domain_name: myexample.com,
  message: Domain has been authenticated successfully.
)
```

