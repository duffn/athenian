# Athenian::InvalidRequestErrorAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pointer** | **String** | Path to the offending request item. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::InvalidRequestErrorAllOf.new(
  pointer: .granularity
)
```

