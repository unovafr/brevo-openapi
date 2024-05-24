# Brevo::GetSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segments** | **Array&lt;Object&gt;** | Listing of all the segments available in your account | [optional] |
| **count** | **Integer** | Number of Segments in your account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSegments.new(
  segments: null,
  count: 10
)
```

