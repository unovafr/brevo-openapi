# Brevo::CompaniesLinkUnlinkIdPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_contact_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts to be linked with company | [optional] |
| **unlink_contact_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts to be unlinked from company | [optional] |
| **link_deals_ids** | **Array&lt;String&gt;** | Deal ids for deals to be linked with company | [optional] |
| **unlink_deals_ids** | **Array&lt;String&gt;** | Deal ids for deals to be unlinked from company | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CompaniesLinkUnlinkIdPatchRequest.new(
  link_contact_ids: [1,2,3],
  unlink_contact_ids: [4,5,6],
  link_deals_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;],
  unlink_deals_ids: [&quot;61a5ce58c5d4795761045994&quot;,&quot;61a5ce58c5d479576104595&quot;,&quot;61a5ce58c5d4795761045996&quot;]
)
```

