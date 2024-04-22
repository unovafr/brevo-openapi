# Brevo::AbTestCampaignResultClickedLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version_a** | [**Array&lt;AbTestVersionClicksInner&gt;**](AbTestVersionClicksInner.md) | Information on clicked links for a particular version |  |
| **version_b** | [**Array&lt;AbTestVersionClicksInner&gt;**](AbTestVersionClicksInner.md) | Information on clicked links for a particular version |  |

## Example

```ruby
require 'brevo'

instance = Brevo::AbTestCampaignResultClickedLinks.new(
  version_a: null,
  version_b: null
)
```

