# Athenian::GenericError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail** | **String** | Human-readable explanation specific to this occurrence of the problem. | [optional] |
| **instance** | **String** | URI reference that identifies the specific occurrence of the problem. It is &#x60;null&#x60; for 4xx, Sentry event ID for 5xx. | [optional] |
| **status** | **Integer** | Duplicated HTTP status code. |  |
| **title** | **String** | Short, human-readable summary of the problem type. |  |
| **type** | **String** | URI reference that identifies the problem type (RFC 7807). |  |

## Example

```ruby
require 'athenian'

instance = Athenian::GenericError.new(
  detail: Unsupported metric: pr-xxx-time,
  instance: 2763c4eabd7240f59829ee1a02546293,
  status: 400,
  title: Bad request syntax or unsupported method.,
  type: /errors/InvalidRequestError
)
```

