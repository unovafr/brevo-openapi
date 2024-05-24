# Brevo::AbTestVersionClicksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | **String** | URL of the link |  |
| **clicks_count** | **Integer** | Number of times a link is clicked |  |
| **click_rate** | **String** | Percentage of clicks of link with respect to total clicks |  |

## Example

```ruby
require 'brevo'

instance = Brevo::AbTestVersionClicksInner.new(
  link: https://facbook.com/versionA,
  clicks_count: null,
  click_rate: 40%
)
```

