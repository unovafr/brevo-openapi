# Brevo::CorporateSubAccountIpDissociateDeleteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | IP address |  |
| **ids** | **Array&lt;Integer&gt;** | Pass the list of sub-account Ids to be dissociated from the IP address |  |

## Example

```ruby
require 'brevo'

instance = Brevo::CorporateSubAccountIpDissociateDeleteRequest.new(
  ip: 103.11.32.88,
  ids: [234322,325553,893432]
)
```

