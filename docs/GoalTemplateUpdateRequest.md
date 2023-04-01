# Athenian::GoalTemplateUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the template. |  |
| **metric** | [**GoalTemplateMetric**](GoalTemplateMetric.md) |  |  |
| **metric_params** | [**GoalMetricParams**](GoalMetricParams.md) |  | [optional] |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::GoalTemplateUpdateRequest.new(
  name: Untitled Template,
  metric: null,
  metric_params: null,
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;]
)
```

