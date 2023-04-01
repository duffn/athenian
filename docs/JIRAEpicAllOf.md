# Athenian::JIRAEpicAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project** | **String** | Identifier of the project where this epic exists. |  |
| **children** | [**Array&lt;JIRAEpicChild&gt;**](JIRAEpicChild.md) | Details about the child issues. | [optional] |
| **prs** | **Integer** | Overall number of mapped pull requests (including the children). |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAEpicAllOf.new(
  project: null,
  children: null,
  prs: null
)
```

