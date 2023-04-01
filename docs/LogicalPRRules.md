# Athenian::LogicalPRRules

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Regular expression to match the PR title. It must be a match starting from the start of the string.  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | Any matching label puts the PR into the logical repository. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::LogicalPRRules.new(
  title: .*[Cc]omponent [Aa]lpha,
  labels_include: null
)
```

