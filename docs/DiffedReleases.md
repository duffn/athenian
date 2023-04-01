# Athenian::DiffedReleases

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**DiffedReleasesInclude**](DiffedReleasesInclude.md) |  |  |
| **data** | **Hash&lt;String, Array&lt;ReleaseDiff&gt;&gt;** | Mapping from repository names to diff results. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DiffedReleases.new(
  include: null,
  data: null
)
```

