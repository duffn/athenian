# Athenian::FilterJIRAStuffWith

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignees** | **Array&lt;String&gt;** | Selected issue assignee users. &#x60;null&#x60; means unassigned. | [optional] |
| **reporters** | **Array&lt;String&gt;** | Selected issue reporter users. | [optional] |
| **commenters** | **Array&lt;String&gt;** | Selected issue commenter users. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterJIRAStuffWith.new(
  assignees: null,
  reporters: null,
  commenters: null
)
```

