# Athenian::GetReleasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **releases** | [**Array&lt;ReleaseNames&gt;**](ReleaseNames.md) | List of repositories and release names to list. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::GetReleasesRequest.new(
  account: null,
  releases: null
)
```

