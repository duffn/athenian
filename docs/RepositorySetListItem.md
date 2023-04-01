# Athenian::RepositorySetListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Repository set identifier. | [optional] |
| **name** | **String** | Repository set name. | [optional] |
| **created** | **Time** | Date and time of creation of the repository set. | [optional] |
| **updated** | **Time** | Date and time of the last change of the repository set. | [optional] |
| **items_count** | **Integer** | Number of repositories in the set. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::RepositorySetListItem.new(
  id: null,
  name: null,
  created: null,
  updated: null,
  items_count: null
)
```

