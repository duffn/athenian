# Athenian::InvitationCheckResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Value indicating whether the invitation is still enabled. | [optional] |
| **type** | **String** | Invited user&#39;s account membership status. | [optional] |
| **valid** | **Boolean** | Value indicating whether the invitation URL is correctly formed. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::InvitationCheckResult.new(
  active: null,
  type: null,
  valid: null
)
```

