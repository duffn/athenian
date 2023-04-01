# Athenian::ContributorIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** | Email addresses belonging to the person. | [optional] |
| **names** | **Array&lt;String&gt;** | The person is known as each of these full names. The format is arbitrary. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ContributorIdentity.new(
  emails: null,
  names: null
)
```

