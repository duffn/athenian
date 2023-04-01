# Athenian::AccountUserChangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **user** | **String** | Account member ID. |  |
| **status** | **String** | Account membership role. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::AccountUserChangeRequest.new(
  account: null,
  user: null,
  status: null
)
```

