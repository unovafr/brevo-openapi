# Brevo::UpdateAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the attribute to update. **Use only if the attribute&#39;s category is &#39;calculated&#39; or &#39;global&#39;**  | [optional] |
| **enumeration** | [**Array&lt;UpdateAttributeEnumerationInner&gt;**](UpdateAttributeEnumerationInner.md) | List of the values and labels that the attribute can take. **Use only if the attribute&#39;s category is \&quot;category\&quot;**. For example, **[{\&quot;value\&quot;:1, \&quot;label\&quot;:\&quot;male\&quot;}, {\&quot;value\&quot;:2, \&quot;label\&quot;:\&quot;female\&quot;}]**  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateAttribute.new(
  value: COUNT[BLACKLISTED,BLACKLISTED,&lt;,NOW()],
  enumeration: null
)
```

