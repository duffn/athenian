# Athenian::JIRAUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Full name of the user. |  |
| **avatar** | **String** | User&#39;s profile picture URL. |  |
| **type** | **String** | * &#x60;atlassian&#x60; indicates a regular account backed by a human. * &#x60;app&#x60; indicates a service account. * &#x60;customer&#x60; indicates an external service desk account. |  |
| **developer** | **String** |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAUser.new(
  name: null,
  avatar: null,
  type: null,
  developer: null
)
```

