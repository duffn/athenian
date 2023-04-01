# Athenian::DeploymentModifyLabelsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete** | **Array&lt;String&gt;** | Delete the labels with the given keys.  Unexisting labels are ignored. | [optional] |
| **upsert** | **Object** |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentModifyLabelsRequest.new(
  delete: null,
  upsert: null
)
```

