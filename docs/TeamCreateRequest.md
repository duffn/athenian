# Athenian::TeamCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account identifier. That account will own the created team. |  |
| **name** | **String** | Name of the team. |  |
| **members** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. |  |
| **parent** | **Integer** | Identifier of the higher level team. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::TeamCreateRequest.new(
  account: null,
  name: null,
  members: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  parent: null
)
```

