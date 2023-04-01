# Athenian::IntegrationsApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_everything**](IntegrationsApi.md#get_everything) | **GET** /get/export | Download all the data collected by Athenian for custom analysis. |
| [**match_identities**](IntegrationsApi.md#match_identities) | **POST** /match/identities | Match provided people names/logins/emails to the account&#39;s GitHub organization members. |


## get_everything

> File get_everything(opts)

Download all the data collected by Athenian for custom analysis.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::IntegrationsApi.new
opts = {
  account: 56, # Integer | Numeric identifier of the account. Raises HTTP 400 if the user belongs to more than one account.
  format: 'parquet' # String | Output file format. The default is `parquet`.
}

begin
  # Download all the data collected by Athenian for custom analysis.
  result = api_instance.get_everything(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling IntegrationsApi->get_everything: #{e}"
end
```

#### Using the get_everything_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_everything_with_http_info(opts)

```ruby
begin
  # Download all the data collected by Athenian for custom analysis.
  data, status_code, headers = api_instance.get_everything_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Athenian::ApiError => e
  puts "Error when calling IntegrationsApi->get_everything_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Numeric identifier of the account. Raises HTTP 400 if the user belongs to more than one account. | [optional] |
| **format** | **String** | Output file format. The default is &#x60;parquet&#x60;. | [optional] |

### Return type

**File**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/json


## match_identities

> <Array<MatchedIdentity>> match_identities(body)

Match provided people names/logins/emails to the account's GitHub organization members.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::IntegrationsApi.new
body = Athenian::MatchIdentitiesRequest.new({account: 37, identities: [Athenian::ContributorIdentity.new]}) # MatchIdentitiesRequest | 

begin
  # Match provided people names/logins/emails to the account's GitHub organization members.
  result = api_instance.match_identities(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling IntegrationsApi->match_identities: #{e}"
end
```

#### Using the match_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MatchedIdentity>>, Integer, Hash)> match_identities_with_http_info(body)

```ruby
begin
  # Match provided people names/logins/emails to the account's GitHub organization members.
  data, status_code, headers = api_instance.match_identities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MatchedIdentity>>
rescue Athenian::ApiError => e
  puts "Error when calling IntegrationsApi->match_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MatchIdentitiesRequest**](MatchIdentitiesRequest.md) |  |  |

### Return type

[**Array&lt;MatchedIdentity&gt;**](MatchedIdentity.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

