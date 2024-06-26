# Brevo::CreateAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value of the attribute. **Use only if the attribute&#39;s category is &#39;calculated&#39; or &#39;global&#39;**  | [optional] |
| **is_recurring** | **Boolean** | Type of the attribute. **Use only if the attribute&#39;s category is &#39;calculated&#39; or &#39;global&#39;**  | [optional] |
| **enumeration** | [**Array&lt;CreateAttributeEnumerationInner&gt;**](CreateAttributeEnumerationInner.md) | List of values and labels that the attribute can take. **Use only if the attribute&#39;s category is \&quot;category\&quot;**. For example: **[{\&quot;value\&quot;:1, \&quot;label\&quot;:\&quot;male\&quot;}, {\&quot;value\&quot;:2, \&quot;label\&quot;:\&quot;female\&quot;}]**  | [optional] |
| **type** | **String** | Type of the attribute. **Use only if the attribute&#39;s category is &#39;normal&#39;, &#39;category&#39; or &#39;transactional&#39;** Type **boolean** is only available if the category is **normal** attribute Type **id** is only available if the category is **transactional** attribute Type **category** is only available if the category is **category** attribute  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateAttribute.new(
  value: COUNT[BLACKLISTED,BLACKLISTED,&lt;,NOW()],
  is_recurring: true,
  enumeration: null,
  type: text
)
```

