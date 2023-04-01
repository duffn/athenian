# Athenian::LogicalDeploymentRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Regular expression to match the deployment name. It must be a match starting from the start of the string.  | [optional] |
| **labels_include** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Match deployments labeled by any key and having at least one value in the list.  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::LogicalDeploymentRules.new(
  title: .*[Aa]lpha,
  labels_include: null
)
```

