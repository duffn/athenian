# Athenian::IncludedDeployments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployments** | [**Hash&lt;String, DeploymentNotification&gt;**](DeploymentNotification.md) | Mapping deployment names to their details. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::IncludedDeployments.new(
  deployments: null
)
```

