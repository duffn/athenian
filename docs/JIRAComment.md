# Athenian::JIRAComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **String** | The name of the user who created the comment. |  |
| **created** | **Time** | The date and time at which the comment was created. |  |
| **rendered_body** | **String** | The comment text. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAComment.new(
  author: null,
  created: null,
  rendered_body: null
)
```

