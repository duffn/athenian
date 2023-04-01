# Athenian::AlignApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_goal_template**](AlignApi.md#create_goal_template) | **POST** /goal_template/create | 👤 Create a goal template. |
| [**delete_goal_template**](AlignApi.md#delete_goal_template) | **DELETE** /goal_template/{id} | 👤 Delete a goal template. |
| [**get_goal_template**](AlignApi.md#get_goal_template) | **GET** /goal_template/{id} | Retrieve a goal template. |
| [**list_goal_templates**](AlignApi.md#list_goal_templates) | **GET** /goal_templates/{id} | List the goal templates for the account. |
| [**update_goal_template**](AlignApi.md#update_goal_template) | **PUT** /goal_template/{id} | 👤 Update a goal template. |


## create_goal_template

> <CreatedIdentifier> create_goal_template(opts)

👤 Create a goal template.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::AlignApi.new
opts = {
  body: Athenian::GoalTemplateCreateRequest.new({account: 37, metric: Athenian::JIRAMetricID::OPEN, name: 'Untitled Template'}) # GoalTemplateCreateRequest | 
}

begin
  # 👤 Create a goal template.
  result = api_instance.create_goal_template(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->create_goal_template: #{e}"
end
```

#### Using the create_goal_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedIdentifier>, Integer, Hash)> create_goal_template_with_http_info(opts)

```ruby
begin
  # 👤 Create a goal template.
  data, status_code, headers = api_instance.create_goal_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedIdentifier>
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->create_goal_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**GoalTemplateCreateRequest**](GoalTemplateCreateRequest.md) |  | [optional] |

### Return type

[**CreatedIdentifier**](CreatedIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_goal_template

> Object delete_goal_template(id)

👤 Delete a goal template.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::AlignApi.new
id = 56 # Integer | Numeric identifier of the goal template.

begin
  # 👤 Delete a goal template.
  result = api_instance.delete_goal_template(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->delete_goal_template: #{e}"
end
```

#### Using the delete_goal_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_goal_template_with_http_info(id)

```ruby
begin
  # 👤 Delete a goal template.
  data, status_code, headers = api_instance.delete_goal_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->delete_goal_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the goal template. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_goal_template

> <GoalTemplate> get_goal_template(id)

Retrieve a goal template.

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

api_instance = Athenian::AlignApi.new
id = 56 # Integer | Numeric identifier of the goal template.

begin
  # Retrieve a goal template.
  result = api_instance.get_goal_template(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->get_goal_template: #{e}"
end
```

#### Using the get_goal_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoalTemplate>, Integer, Hash)> get_goal_template_with_http_info(id)

```ruby
begin
  # Retrieve a goal template.
  data, status_code, headers = api_instance.get_goal_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoalTemplate>
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->get_goal_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the goal template. |  |

### Return type

[**GoalTemplate**](GoalTemplate.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_goal_templates

> <Array<GoalTemplate>> list_goal_templates(id, opts)

List the goal templates for the account.

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

api_instance = Athenian::AlignApi.new
id = 56 # Integer | Numeric identifier of the account.
opts = {
  include_tlo: true # Boolean | Include templates for TLOs goals, i.e. goals based on parameterized metrics.
}

begin
  # List the goal templates for the account.
  result = api_instance.list_goal_templates(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->list_goal_templates: #{e}"
end
```

#### Using the list_goal_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GoalTemplate>>, Integer, Hash)> list_goal_templates_with_http_info(id, opts)

```ruby
begin
  # List the goal templates for the account.
  data, status_code, headers = api_instance.list_goal_templates_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GoalTemplate>>
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->list_goal_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |
| **include_tlo** | **Boolean** | Include templates for TLOs goals, i.e. goals based on parameterized metrics. | [optional][default to false] |

### Return type

[**Array&lt;GoalTemplate&gt;**](GoalTemplate.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_goal_template

> Object update_goal_template(id, opts)

👤 Update a goal template.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::AlignApi.new
id = 56 # Integer | Numeric identifier of the goal template.
opts = {
  body: Athenian::GoalTemplateUpdateRequest.new({name: 'Untitled Template', metric: Athenian::JIRAMetricID::OPEN}) # GoalTemplateUpdateRequest | 
}

begin
  # 👤 Update a goal template.
  result = api_instance.update_goal_template(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->update_goal_template: #{e}"
end
```

#### Using the update_goal_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_goal_template_with_http_info(id, opts)

```ruby
begin
  # 👤 Update a goal template.
  data, status_code, headers = api_instance.update_goal_template_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling AlignApi->update_goal_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the goal template. |  |
| **body** | [**GoalTemplateUpdateRequest**](GoalTemplateUpdateRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

