# Brevo::GetProductDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID for which you requested the details |  |
| **name** | **String** | Name of the product for which you requested the details |  |
| **created_at** | **String** | Creation UTC date-time of the product (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | Last modification UTC date-time of the product (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **url** | **String** | URL to the product | [optional] |
| **image_url** | **String** | Absolute URL to the cover image of the product | [optional] |
| **sku** | **String** | Product identifier from the shop | [optional] |
| **price** | **Float** | Price of the product | [optional] |
| **categories** | **Array&lt;String&gt;** | Category ID-s of the product | [optional] |
| **parent_id** | **String** | Parent product id of the product | [optional] |
| **s3_original** | **String** | S3 url of original image | [optional] |
| **s3_thumb_analytics** | **String** | S3 thumbnail url of original image in 120x120 dimension for analytics section |  |
| **s3_thumb_editor** | **String** | S3 thumbnail url of original image in 600x400 dimension for editor section |  |
| **meta_info** | **Object** | Meta data of product such as description, vendor, producer, stock level, etc. | [optional] |
| **is_deleted** | **Boolean** | product deleted from the shop&#39;s database | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetProductDetails.new(
  id: P11,
  name: Iphone 11,
  created_at: 2017-05-12T12:30:00Z,
  modified_at: 2017-05-12T12:30:00Z,
  url: http://mydomain.com/product/electronics/product1,
  image_url: http://mydomain.com/product-absoulte-url/img.jpeg,
  sku: null,
  price: null,
  categories: null,
  parent_id: null,
  s3_original: null,
  s3_thumb_analytics: null,
  s3_thumb_editor: null,
  meta_info: {&quot;description&quot;:&quot;Shoes for sports&quot;,&quot;brand&quot;:&quot;addidas&quot;},
  is_deleted: true
)
```

