# Athenian::JIRAStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Exact status name. |  |
| **stage** | [**JIRAStatusCategory**](JIRAStatusCategory.md) |  |  |
| **project** | **String** | Identifier of the project where this status exists. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAStatus.new(
  name: null,
  stage: null,
  project: null
)
```

