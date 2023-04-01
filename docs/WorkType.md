# Athenian::WorkType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Work type name. It is unique within the account scope. |  |
| **color** | **String** | RGB 24-bit color in hex. |  |
| **rules** | [**Array&lt;WorkTypeRule&gt;**](WorkTypeRule.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::WorkType.new(
  name: null,
  color: null,
  rules: null
)
```

