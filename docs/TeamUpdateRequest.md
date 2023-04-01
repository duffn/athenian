# Athenian::TeamUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | New name of the team. |  |
| **members** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. |  |
| **parent** | **Integer** | New identifier of the higher level team. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::TeamUpdateRequest.new(
  name: null,
  members: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  parent: null
)
```

