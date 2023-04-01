# Athenian::MatchedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | [**ContributorIdentity**](ContributorIdentity.md) |  |  |
| **to** | [**MatchedIdentityTo**](MatchedIdentityTo.md) |  |  |
| **confidence** | **Float** | Value from 0 to 1 indicating how similar are the users. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::MatchedIdentity.new(
  from: null,
  to: null,
  confidence: null
)
```

