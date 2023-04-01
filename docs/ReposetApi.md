# Athenian::ReposetApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reposet**](ReposetApi.md#create_reposet) | **POST** /reposet/create | 🛡️👤 Create a repository set. |
| [**delete_reposet**](ReposetApi.md#delete_reposet) | **DELETE** /reposet/{id} | 🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet. |
| [**get_reposet**](ReposetApi.md#get_reposet) | **GET** /reposet/{id} | List a repository set. The user must be in the account that owns the reposet. |
| [**list_reposets**](ReposetApi.md#list_reposets) | **GET** /reposets/{id} | List the repository sets belonging to the calling user. |
| [**update_reposet**](ReposetApi.md#update_reposet) | **PUT** /reposet/{id} | 🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet. |


## create_reposet

> <CreatedIdentifier> create_reposet(opts)

🛡️👤 Create a repository set.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::ReposetApi.new
opts = {
  body: Athenian::RepositorySetCreateRequest.new({account: 37, items: ['github.com/athenianco/athenian-webapp'], name: 'name_example'}) # RepositorySetCreateRequest | 
}

begin
  # 🛡️👤 Create a repository set.
  result = api_instance.create_reposet(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->create_reposet: #{e}"
end
```

#### Using the create_reposet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedIdentifier>, Integer, Hash)> create_reposet_with_http_info(opts)

```ruby
begin
  # 🛡️👤 Create a repository set.
  data, status_code, headers = api_instance.create_reposet_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedIdentifier>
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->create_reposet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RepositorySetCreateRequest**](RepositorySetCreateRequest.md) |  | [optional] |

### Return type

[**CreatedIdentifier**](CreatedIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_reposet

> Object delete_reposet(id)

🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::ReposetApi.new
id = 56 # Integer | Numeric identifier of the repository set to delete.

begin
  # 🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet.
  result = api_instance.delete_reposet(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->delete_reposet: #{e}"
end
```

#### Using the delete_reposet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_reposet_with_http_info(id)

```ruby
begin
  # 🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet.
  data, status_code, headers = api_instance.delete_reposet_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->delete_reposet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the repository set to delete. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reposet

> <RepositorySetWithName> get_reposet(id)

List a repository set. The user must be in the account that owns the reposet.

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

api_instance = Athenian::ReposetApi.new
id = 56 # Integer | Numeric identifier of the repository set to list.

begin
  # List a repository set. The user must be in the account that owns the reposet.
  result = api_instance.get_reposet(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->get_reposet: #{e}"
end
```

#### Using the get_reposet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositorySetWithName>, Integer, Hash)> get_reposet_with_http_info(id)

```ruby
begin
  # List a repository set. The user must be in the account that owns the reposet.
  data, status_code, headers = api_instance.get_reposet_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositorySetWithName>
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->get_reposet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the repository set to list. |  |

### Return type

[**RepositorySetWithName**](RepositorySetWithName.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_reposets

> <Array<RepositorySetListItem>> list_reposets(id)

List the repository sets belonging to the calling user.

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

api_instance = Athenian::ReposetApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the repository sets belonging to the calling user.
  result = api_instance.list_reposets(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->list_reposets: #{e}"
end
```

#### Using the list_reposets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RepositorySetListItem>>, Integer, Hash)> list_reposets_with_http_info(id)

```ruby
begin
  # List the repository sets belonging to the calling user.
  data, status_code, headers = api_instance.list_reposets_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RepositorySetListItem>>
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->list_reposets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;RepositorySetListItem&gt;**](RepositorySetListItem.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_reposet

> Object update_reposet(id, opts)

🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::ReposetApi.new
id = 56 # Integer | Numeric identifier of the repository set to update.
opts = {
  body: Athenian::RepositorySetWithName.new # RepositorySetWithName | 
}

begin
  # 🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet.
  result = api_instance.update_reposet(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->update_reposet: #{e}"
end
```

#### Using the update_reposet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_reposet_with_http_info(id, opts)

```ruby
begin
  # 🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet.
  data, status_code, headers = api_instance.update_reposet_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling ReposetApi->update_reposet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the repository set to update. |  |
| **body** | [**RepositorySetWithName**](RepositorySetWithName.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

