# Athenian::DeploymentWith

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pr_author** | **Array** |  | [optional] |
| **commit_author** | **Array** |  | [optional] |
| **releaser** | **Array** |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentWith.new(
  pr_author: null,
  commit_author: null,
  releaser: null
)
```

