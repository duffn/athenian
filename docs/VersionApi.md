# Athenian::VersionApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_versions**](VersionApi.md#get_versions) | **GET** /versions | Query the versions of the backend components. |


## get_versions

> <Versions> get_versions

Query the versions of the backend components.

### Examples

```ruby
require 'time'
require 'athenian'

api_instance = Athenian::VersionApi.new

begin
  # Query the versions of the backend components.
  result = api_instance.get_versions
  p result
rescue Athenian::ApiError => e
  puts "Error when calling VersionApi->get_versions: #{e}"
end
```

#### Using the get_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Versions>, Integer, Hash)> get_versions_with_http_info

```ruby
begin
  # Query the versions of the backend components.
  data, status_code, headers = api_instance.get_versions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Versions>
rescue Athenian::ApiError => e
  puts "Error when calling VersionApi->get_versions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Versions**](Versions.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

