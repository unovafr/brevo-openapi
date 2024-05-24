# Brevo::CrmDealsLinkUnlinkIdPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_contact_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts to be linked with deal | [optional] |
| **unlink_contact_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts to be unlinked from deal | [optional] |
| **link_company_ids** | **Array&lt;String&gt;** | Company ids to be linked with deal | [optional] |
| **unlink_company_ids** | **Array&lt;String&gt;** | Company ids to be unlinked from deal | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CrmDealsLinkUnlinkIdPatchRequest.new(
  link_contact_ids: [1,2,3],
  unlink_contact_ids: [4,5,6],
  link_company_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;],
  unlink_company_ids: [&quot;61a5ce58c5d4795761045994&quot;,&quot;61a5ce58c5d479576104595&quot;,&quot;61a5ce58c5d4795761045996&quot;]
)
```

