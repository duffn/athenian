# Athenian::ListedToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Token identifier - can be used in &#x60;/token/{id}&#x60; DELETE. |  |
| **name** | **String** | Name of the token (see &#x60;/token/create&#x60;). |  |
| **last_used** | **Time** | When this token was used last time. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ListedToken.new(
  id: null,
  name: null,
  last_used: null
)
```

