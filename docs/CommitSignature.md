# Athenian::CommitSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** | User name which uniquely identifies any developer on any service provider. The format matches the profile URL without the protocol part.  | [optional] |
| **name** | **String** | Git signature name. | [optional] |
| **email** | **String** | Git signature email. | [optional] |
| **timestamp** | **Time** | When the corresponding action happened in UTC. |  |
| **timezone** | **Float** | Timezone offset of the action timestamp (in hours). |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CommitSignature.new(
  login: github.com/vmarkovtsev,
  name: null,
  email: null,
  timestamp: null,
  timezone: null
)
```

