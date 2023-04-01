# Athenian::FilteredDeployments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**FilteredDeploymentsInclude**](FilteredDeploymentsInclude.md) |  |  |
| **deployments** | [**Array&lt;FilteredDeployment&gt;**](FilteredDeployment.md) | List of matched deployments. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredDeployments.new(
  include: null,
  deployments: null
)
```

