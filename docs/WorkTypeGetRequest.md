# Athenian::WorkTypeGetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | User&#39;s account ID. |  |
| **name** | **String** | Work type name. It is unique within the account scope. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::WorkTypeGetRequest.new(
  account: null,
  name: null
)
```

