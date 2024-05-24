# Brevo::CompaniesIdPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of company | [optional] |
| **attributes** | **Object** | Attributes for company update | [optional] |
| **country_code** | **Integer** | Country code if phone_number is passed in attributes. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CompaniesIdPatchRequest.new(
  name: company,
  attributes: {&quot;category&quot;:&quot;label_2&quot;,&quot;domain&quot;:&quot;xyz&quot;,&quot;date&quot;:&quot;2022-05-04T00:00:00+05:30&quot;,&quot;industry&quot;:&quot;flipkart&quot;,&quot;number_of_contacts&quot;:1,&quot;number_of_employees&quot;:100,&quot;owner&quot;:&quot;5b1a17d914b73d35a76ca0c7&quot;,&quot;phone_number&quot;:&quot;81718441912&quot;,&quot;revenue&quot;:10000.34222},
  country_code: 91
)
```

