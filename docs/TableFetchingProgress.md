# Athenian::TableFetchingProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetched** | **Integer** | How many records have been stored in the DB table so far. |  |
| **name** | **String** | DB table identifier. |  |
| **total** | **Integer** | How many records the DB table is expected to have. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::TableFetchingProgress.new(
  fetched: null,
  name: null,
  total: null
)
```

