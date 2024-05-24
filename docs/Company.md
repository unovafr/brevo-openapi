# Brevo::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique comoany id | [optional] |
| **attributes** | **Object** | Company attributes with values | [optional] |
| **linked_contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this company | [optional] |
| **linked_deals_ids** | **Array&lt;String&gt;** | Deals ids for companies linked to this company | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Company.new(
  id: 629475917295261d9b1f4403,
  attributes: {&quot;created_at&quot;:&quot;2022-01-13T19:04:24.376+05:30&quot;,&quot;domain&quot;:&quot;xyz&quot;,&quot;last_updated_at&quot;:&quot;2022-04-01T18:47:48.283+05:30&quot;,&quot;name&quot;:&quot;text&quot;,&quot;number_of_contacts&quot;:0,&quot;owner&quot;:&quot;62260474111b1101704a9d85&quot;,&quot;owner_assign_date&quot;:&quot;2022-04-01T18:21:13.379+05:30&quot;,&quot;phone_number&quot;:8171844192,&quot;revenue&quot;:10},
  linked_contacts_ids: [1,2,3],
  linked_deals_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;]
)
```

