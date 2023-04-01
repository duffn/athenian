# Athenian::StageTimings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wip** | **String** | Time duration value. |  |
| **review** | **String** | Time duration value. | [optional] |
| **merge** | **String** | Time duration value. | [optional] |
| **release** | **String** | Time duration value. | [optional] |
| **deploy** | **Hash&lt;String, String&gt;** | Map from target environments to the values. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::StageTimings.new(
  wip: null,
  review: null,
  merge: null,
  release: null,
  deploy: null
)
```

