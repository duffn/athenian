# Athenian::UserApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_user**](UserApi.md#change_user) | **PUT** /account/user | 🛡️👤 Change the status of an account member: regular, admin, or banished (deleted). This endpoint is allowed only for account admins. |
| [**get_account_details**](UserApi.md#get_account_details) | **GET** /account/{id}/details | List the calling user&#39;s account members and installed GitHub and JIRA organizations. |
| [**get_account_features**](UserApi.md#get_account_features) | **GET** /account/{id}/features | List the product features enabled for the account. |
| [**get_share**](UserApi.md#get_share) | **GET** /share/{id} | 👤 Load the previously saved state of the UI views. |
| [**get_user**](UserApi.md#get_user) | **GET** /user | Show details about the calling user. |
| [**save_share**](UserApi.md#save_share) | **POST** /share | 👤 Save the state of UI views and return a reference. |


## change_user

> <Account> change_user(opts)

🛡️👤 Change the status of an account member: regular, admin, or banished (deleted). This endpoint is allowed only for account admins.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::UserApi.new
opts = {
  body: Athenian::AccountUserChangeRequest.new({account: 37, user: 'user_example', status: 'regular'}) # AccountUserChangeRequest | 
}

begin
  # 🛡️👤 Change the status of an account member: regular, admin, or banished (deleted). This endpoint is allowed only for account admins.
  result = api_instance.change_user(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->change_user: #{e}"
end
```

#### Using the change_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> change_user_with_http_info(opts)

```ruby
begin
  # 🛡️👤 Change the status of an account member: regular, admin, or banished (deleted). This endpoint is allowed only for account admins.
  data, status_code, headers = api_instance.change_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->change_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AccountUserChangeRequest**](AccountUserChangeRequest.md) |  | [optional] |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account_details

> <Account> get_account_details(id)

List the calling user's account members and installed GitHub and JIRA organizations.

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

api_instance = Athenian::UserApi.new
id = 56 # Integer | Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see `/user`.

begin
  # List the calling user's account members and installed GitHub and JIRA organizations.
  result = api_instance.get_account_details(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_account_details: #{e}"
end
```

#### Using the get_account_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_account_details_with_http_info(id)

```ruby
begin
  # List the calling user's account members and installed GitHub and JIRA organizations.
  data, status_code, headers = api_instance.get_account_details_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_account_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see &#x60;/user&#x60;. |  |

### Return type

[**Account**](Account.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_features

> <Array<ProductFeature>> get_account_features(id)

List the product features enabled for the account.

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

api_instance = Athenian::UserApi.new
id = 56 # Integer | Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see `/user`.

begin
  # List the product features enabled for the account.
  result = api_instance.get_account_features(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_account_features: #{e}"
end
```

#### Using the get_account_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProductFeature>>, Integer, Hash)> get_account_features_with_http_info(id)

```ruby
begin
  # List the product features enabled for the account.
  data, status_code, headers = api_instance.get_account_features_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProductFeature>>
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_account_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see &#x60;/user&#x60;. |  |

### Return type

[**Array&lt;ProductFeature&gt;**](ProductFeature.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_share

> <Share> get_share(id)

👤 Load the previously saved state of the UI views.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::UserApi.new
id = 'id_example' # String | Reference to the share previously saved by `PUT /share`.

begin
  # 👤 Load the previously saved state of the UI views.
  result = api_instance.get_share(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_share: #{e}"
end
```

#### Using the get_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Share>, Integer, Hash)> get_share_with_http_info(id)

```ruby
begin
  # 👤 Load the previously saved state of the UI views.
  data, status_code, headers = api_instance.get_share_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Share>
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Reference to the share previously saved by &#x60;PUT /share&#x60;. |  |

### Return type

[**Share**](Share.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user

Show details about the calling user.

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

api_instance = Athenian::UserApi.new

begin
  # Show details about the calling user.
  result = api_instance.get_user
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info

```ruby
begin
  # Show details about the calling user.
  data, status_code, headers = api_instance.get_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->get_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_share

> String save_share(opts)

👤 Save the state of UI views and return a reference.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::UserApi.new
opts = {
  body: { ... } # Object | 
}

begin
  # 👤 Save the state of UI views and return a reference.
  result = api_instance.save_share(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->save_share: #{e}"
end
```

#### Using the save_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> save_share_with_http_info(opts)

```ruby
begin
  # 👤 Save the state of UI views and return a reference.
  data, status_code, headers = api_instance.save_share_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Athenian::ApiError => e
  puts "Error when calling UserApi->save_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  | [optional] |

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

