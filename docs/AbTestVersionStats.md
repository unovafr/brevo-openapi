# Brevo::AbTestVersionStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version_a** | **String** | percentage of an event for version A |  |
| **version_b** | **String** | percentage of an event for version B |  |

## Example

```ruby
require 'brevo'

instance = Brevo::AbTestVersionStats.new(
  version_a: 50%,
  version_b: 50%
)
```

