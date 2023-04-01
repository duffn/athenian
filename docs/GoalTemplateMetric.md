# Athenian::GoalTemplateMetric

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'athenian'

Athenian::GoalTemplateMetric.openapi_one_of
# =>
# [
#   :'JIRAMetricID',
#   :'PullRequestMetricID',
#   :'ReleaseMetricID'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'athenian'

Athenian::GoalTemplateMetric.build(data)
# => #<JIRAMetricID:0x00007fdd4aab02a0>

Athenian::GoalTemplateMetric.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `JIRAMetricID`
- `PullRequestMetricID`
- `ReleaseMetricID`
- `nil` (if no type matches)

