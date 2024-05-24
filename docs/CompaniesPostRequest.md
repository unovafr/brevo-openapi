# Brevo::CompaniesPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of company |  |
| **attributes** | **Object** | Attributes for company creation | [optional] |
| **country_code** | **Integer** | Country code if phone_number is passed in attributes. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CompaniesPostRequest.new(
  name: company,
  attributes: {&quot;domain&quot;:&quot;https://example.com&quot;,&quot;industry&quot;:&quot;Fabric&quot;,&quot;owner&quot;:&quot;60e68d60582a3b006f524197&quot;},
  country_code: 91
)
```

