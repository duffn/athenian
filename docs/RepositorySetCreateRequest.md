# Athenian::RepositorySetCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account identifier. That account will own the created repository set. The user must be an admin of the account. |  |
| **items** | **Array&lt;String&gt;** |  |  |
| **name** | **String** | Unique editable identifier of the repository set. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::RepositorySetCreateRequest.new(
  account: null,
  items: null,
  name: null
)
```

