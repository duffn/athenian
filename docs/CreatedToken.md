# Athenian::CreatedToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Token identifier - can be used in &#x60;/token/{id}&#x60; DELETE. |  |
| **token** | **String** | Secret token - not stored server-side! |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CreatedToken.new(
  id: null,
  token: null
)
```

