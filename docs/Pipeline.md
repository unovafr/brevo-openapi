# Brevo::Pipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_name** | **String** | Pipeline name | [optional] |
| **pipeline** | **String** | Pipeline id | [optional] |
| **stages** | [**Array&lt;PipelineStage&gt;**](PipelineStage.md) | List of stages | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Pipeline.new(
  pipeline_name: Sales Pipeline,
  pipeline: 5ea675e3da0dd085acaea610,
  stages: null
)
```

