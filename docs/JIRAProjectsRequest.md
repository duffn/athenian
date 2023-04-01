# Athenian::JIRAProjectsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **projects** | **Hash&lt;String, Boolean&gt;** | Map from project keys to their enabled/disabled flags. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAProjectsRequest.new(
  account: null,
  projects: null
)
```

