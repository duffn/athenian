# Athenian::ReleaseSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**ReleaseSetInclude**](ReleaseSetInclude.md) |  | [optional] |
| **data** | [**Array&lt;FilteredRelease&gt;**](FilteredRelease.md) | List of matching release metadata. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseSet.new(
  include: null,
  data: null
)
```

