# Athenian::ReleaseDiff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **old** | **String** |  |  |
| **new** | **String** |  |  |
| **releases** | [**Array&lt;FilteredRelease&gt;**](FilteredRelease.md) | List of matching release metadata. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseDiff.new(
  old: null,
  new: null,
  releases: null
)
```

