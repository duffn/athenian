# Athenian::AcceptedInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Calling user&#39;s email address. | [optional] |
| **name** | **String** | Calling user&#39;s name. | [optional] |
| **url** | **String** | Invitation URL. Users are supposed to click it and become admins or regular account members. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::AcceptedInvitation.new(
  email: null,
  name: null,
  url: null
)
```

