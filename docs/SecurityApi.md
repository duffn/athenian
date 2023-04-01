# Athenian::SecurityApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_token**](SecurityApi.md#create_token) | **POST** /token/create | 👤 Create a new Personal Access Token for the calling user and the specified account. |
| [**delete_token**](SecurityApi.md#delete_token) | **DELETE** /token/{id} | 👤 Delete a Personal Access Token belonging to the user. |
| [**list_tokens**](SecurityApi.md#list_tokens) | **GET** /tokens/{id} | List Personal Access Tokens of the user in the account. |
| [**patch_token**](SecurityApi.md#patch_token) | **PATCH** /token/{id} | 👤 Change Personal Access Token&#39;s details. |


## create_token

> <CreatedToken> create_token(opts)

👤 Create a new Personal Access Token for the calling user and the specified account.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SecurityApi.new
opts = {
  body: Athenian::CreateTokenRequest.new({account: 37, name: 'name_example'}) # CreateTokenRequest | 
}

begin
  # 👤 Create a new Personal Access Token for the calling user and the specified account.
  result = api_instance.create_token(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->create_token: #{e}"
end
```

#### Using the create_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedToken>, Integer, Hash)> create_token_with_http_info(opts)

```ruby
begin
  # 👤 Create a new Personal Access Token for the calling user and the specified account.
  data, status_code, headers = api_instance.create_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedToken>
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->create_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CreateTokenRequest**](CreateTokenRequest.md) |  | [optional] |

### Return type

[**CreatedToken**](CreatedToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_token

> Object delete_token(id)

👤 Delete a Personal Access Token belonging to the user.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SecurityApi.new
id = 56 # Integer | Numeric identifier of the token.

begin
  # 👤 Delete a Personal Access Token belonging to the user.
  result = api_instance.delete_token(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->delete_token: #{e}"
end
```

#### Using the delete_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_token_with_http_info(id)

```ruby
begin
  # 👤 Delete a Personal Access Token belonging to the user.
  data, status_code, headers = api_instance.delete_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->delete_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the token. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tokens

> <Array<ListedToken>> list_tokens(id)

List Personal Access Tokens of the user in the account.

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

api_instance = Athenian::SecurityApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List Personal Access Tokens of the user in the account.
  result = api_instance.list_tokens(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->list_tokens: #{e}"
end
```

#### Using the list_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListedToken>>, Integer, Hash)> list_tokens_with_http_info(id)

```ruby
begin
  # List Personal Access Tokens of the user in the account.
  data, status_code, headers = api_instance.list_tokens_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListedToken>>
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->list_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;ListedToken&gt;**](ListedToken.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_token

> Object patch_token(id, opts)

👤 Change Personal Access Token's details.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SecurityApi.new
id = 56 # Integer | Numeric identifier of the token.
opts = {
  body: Athenian::PatchTokenRequest.new # PatchTokenRequest | 
}

begin
  # 👤 Change Personal Access Token's details.
  result = api_instance.patch_token(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->patch_token: #{e}"
end
```

#### Using the patch_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> patch_token_with_http_info(id, opts)

```ruby
begin
  # 👤 Change Personal Access Token's details.
  data, status_code, headers = api_instance.patch_token_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling SecurityApi->patch_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the token. |  |
| **body** | [**PatchTokenRequest**](PatchTokenRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

