# Athenian::MatchIdentitiesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | User&#39;s account ID. |  |
| **identities** | [**Array&lt;ContributorIdentity&gt;**](ContributorIdentity.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::MatchIdentitiesRequest.new(
  account: null,
  identities: null
)
```

