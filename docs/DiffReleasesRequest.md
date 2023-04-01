# Athenian::DiffReleasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** |  |  |
| **borders** | **Hash&lt;String, Array&lt;ReleasePair&gt;&gt;** | Mapping from repository names to analyzed release pairs. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DiffReleasesRequest.new(
  account: null,
  borders: null
)
```

