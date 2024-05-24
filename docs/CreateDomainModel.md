# Brevo::CreateDomainModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the Domain created |  |
| **domain_name** | **String** | Domain | [optional] |
| **domain_provider** | **String** | Domain Provider | [optional] |
| **message** | **String** | Success message | [optional] |
| **dns_records** | [**CreateDomainModelDnsRecords**](CreateDomainModelDnsRecords.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateDomainModel.new(
  id: 5,
  domain_name: example.com,
  domain_provider: GoDaddy,
  message: Domain added successfully. To authenticate it, add following DNS records,
  dns_records: null
)
```

