# Brevo::WhatsappCampTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name of the template | [optional] |
| **category** | **String** | description of the template | [optional] |
| **language** | **String** | language of the template | [optional] |
| **contains_button** | **Boolean** |  | [optional] |
| **display_header** | **Boolean** |  | [optional] |
| **header_type** | **String** | type of header | [optional] |
| **components** | [**Array&lt;ComponentItems&gt;**](ComponentItems.md) | array of component item objects | [optional] |
| **header_variables** | [**Array&lt;VariablesItems&gt;**](VariablesItems.md) | array of variables item object | [optional] |
| **body_variables** | [**Array&lt;VariablesItems&gt;**](VariablesItems.md) | array of variables item variables | [optional] |
| **button_type** | **String** |  | [optional] |
| **hide_footer** | **Boolean** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::WhatsappCampTemplate.new(
  name: wta107,
  category: Marketing,
  language: en_GB,
  contains_button: false,
  display_header: true,
  header_type: text,
  components: null,
  header_variables: null,
  body_variables: null,
  button_type: QUICK_REPLIES,
  hide_footer: true
)
```

