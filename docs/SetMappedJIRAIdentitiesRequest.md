# Athenian::SetMappedJIRAIdentitiesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **changes** | [**Array&lt;MappedJIRAIdentityChange&gt;**](MappedJIRAIdentityChange.md) | Individual GitHub&lt;&gt;JIRA user mapping change. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::SetMappedJIRAIdentitiesRequest.new(
  account: null,
  changes: null
)
```

