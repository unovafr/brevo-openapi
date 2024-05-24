# Brevo::GetDomainsListDomainsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the domain |  |
| **domain_name** | **String** | Domain name |  |
| **authenticated** | **Boolean** | Status of domain authentication (true&#x3D;authenticated, false&#x3D;non authenticated) |  |
| **verified** | **Boolean** | Status of domain verification (true&#x3D;verified, false&#x3D;non verified) |  |
| **ip** | **String** | Dedicated IP associated with domain | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetDomainsListDomainsInner.new(
  id: 1,
  domain_name: mycompany.com,
  authenticated: true,
  verified: false,
  ip: 123.98.689.7
)
```

