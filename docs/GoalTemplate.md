# Athenian::GoalTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | Whether the templates is avaiable for use. |  |
| **id** | **Integer** | Identifier of the template. |  |
| **metric** | [**GoalTemplateMetric**](GoalTemplateMetric.md) |  |  |
| **metric_params** | [**GoalMetricParams**](GoalMetricParams.md) |  | [optional] |
| **name** | **String** | Name of the template. |  |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::GoalTemplate.new(
  available: null,
  id: null,
  metric: null,
  metric_params: null,
  name: Untitled Template,
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;]
)
```

