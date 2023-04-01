# Athenian::FilteredEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployments_count** | **Integer** | Number of deployments (successful or not) in the specified time interval. |  |
| **last_conclusion** | [**DeploymentConclusion**](DeploymentConclusion.md) |  |  |
| **name** | **String** | Name of the environment. |  |
| **repositories** | **Array** |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredEnvironment.new(
  deployments_count: null,
  last_conclusion: null,
  name: null,
  repositories: null
)
```

