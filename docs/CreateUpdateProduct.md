# Brevo::CreateUpdateProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID for which you requested the details |  |
| **name** | **String** | Mandatory in case of creation**. Name of the product for which you requested the details |  |
| **url** | **String** | URL to the product | [optional] |
| **image_url** | **String** | Absolute URL to the cover image of the product | [optional] |
| **sku** | **String** | Product identifier from the shop | [optional] |
| **price** | **Float** | Price of the product | [optional] |
| **categories** | **Array&lt;String&gt;** | Category ID-s of the product | [optional] |
| **parent_id** | **String** | Parent product id of the product | [optional] |
| **meta_info** | [**Hash&lt;String, GetContactInfoIdentifierParameter&gt;**](GetContactInfoIdentifierParameter.md) | Meta data of product such as description, vendor, producer, stock level. The size of cumulative metaInfo shall not exceed **1000 KB**. Maximum length of metaInfo object can be 10. | [optional] |
| **update_enabled** | **Boolean** | Facilitate to update the existing category in the same request (updateEnabled &#x3D; true) | [optional][default to false] |
| **deleted_at** | **String** | UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) of the product deleted from the shop&#39;s database | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateProduct.new(
  id: P11,
  name: Iphone 11,
  url: http://mydomain.com/product/electronics/product1,
  image_url: http://mydomain.com/product-absoulte-url/img.jpeg,
  sku: null,
  price: null,
  categories: null,
  parent_id: null,
  meta_info: {&quot;description&quot;:&quot;Shoes for sports&quot;,&quot;brand&quot;:&quot;addidas&quot;},
  update_enabled: false,
  deleted_at: null
)
```

