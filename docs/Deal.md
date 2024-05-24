# Brevo::Deal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique deal id | [optional] |
| **attributes** | **Object** | Deal attributes with values | [optional] |
| **linked_contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this deal | [optional] |
| **linked_companies_ids** | **Array&lt;String&gt;** | Companies ids for companies linked to this deal | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Deal.new(
  id: 629475917295261d9b1f4403,
  attributes: {&quot;deal_name&quot;:&quot;testname&quot;,&quot;deal_owner&quot;:&quot;6093d2425a9b436e9519d034&quot;,&quot;amount&quot;:12,&quot;pipeline&quot;:&quot;6093d296ad1e9c5cf2140a58&quot;,&quot;deal_stage&quot;:&quot;9e577ff7-8e42-4ab3-be26-2b5e01b42518&quot;,&quot;stage_updated_at&quot;:&quot;2022-05-30T07:42:05.671Z&quot;,&quot;created_at&quot;:&quot;2022-05-30T07:42:05.671Z&quot;,&quot;number_of_contacts&quot;:1,&quot;last_updated_date&quot;:&quot;2022-06-06T08:38:36.761Z&quot;,&quot;last_activity_date&quot;:&quot;2022-06-06T08:38:36.000Z&quot;,&quot;next_activity_date&quot;:null,&quot;number_of_activities&quot;:0},
  linked_contacts_ids: [1,2,3],
  linked_companies_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;]
)
```

