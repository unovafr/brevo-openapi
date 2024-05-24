# Brevo::GetDomainConfigurationModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain |  |
| **verified** | **Boolean** | Status of domain verification (true&#x3D;verified, false&#x3D;non verified) |  |
| **authenticated** | **Boolean** | Status of domain authentication (true&#x3D;authenticated, false&#x3D;non authenticated) |  |
| **dns_records** | [**CreateDomainModelDnsRecords**](CreateDomainModelDnsRecords.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetDomainConfigurationModel.new(
  domain: myexample.com,
  verified: true,
  authenticated: false,
  dns_records: null
)
```

