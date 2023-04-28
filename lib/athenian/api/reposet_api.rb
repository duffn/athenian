=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.85 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.85.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'cgi'

module Athenian
  class ReposetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 🛡️👤 Create a repository set.
    # @param [Hash] opts the optional parameters
    # @option opts [RepositorySetCreateRequest] :body 
    # @return [CreatedIdentifier]
    def create_reposet(opts = {})
      data, _status_code, _headers = create_reposet_with_http_info(opts)
      data
    end

    # 🛡️👤 Create a repository set.
    # @param [Hash] opts the optional parameters
    # @option opts [RepositorySetCreateRequest] :body 
    # @return [Array<(CreatedIdentifier, Integer, Hash)>] CreatedIdentifier data, response status code and response headers
    def create_reposet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReposetApi.create_reposet ...'
      end
      # resource path
      local_var_path = '/reposet/create'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatedIdentifier'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ReposetApi.create_reposet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposetApi#create_reposet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to delete.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_reposet(id, opts = {})
      data, _status_code, _headers = delete_reposet_with_http_info(id, opts)
      data
    end

    # 🛡️👤 Delete a repository set. The user must be an admin of the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_reposet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReposetApi.delete_reposet ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReposetApi.delete_reposet"
      end
      # resource path
      local_var_path = '/reposet/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ReposetApi.delete_reposet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposetApi#delete_reposet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List a repository set. The user must be in the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to list.
    # @param [Hash] opts the optional parameters
    # @return [RepositorySetWithName]
    def get_reposet(id, opts = {})
      data, _status_code, _headers = get_reposet_with_http_info(id, opts)
      data
    end

    # List a repository set. The user must be in the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RepositorySetWithName, Integer, Hash)>] RepositorySetWithName data, response status code and response headers
    def get_reposet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReposetApi.get_reposet ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReposetApi.get_reposet"
      end
      # resource path
      local_var_path = '/reposet/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RepositorySetWithName'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReposetApi.get_reposet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposetApi#get_reposet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the repository sets belonging to the calling user.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<RepositorySetListItem>]
    def list_reposets(id, opts = {})
      data, _status_code, _headers = list_reposets_with_http_info(id, opts)
      data
    end

    # List the repository sets belonging to the calling user.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RepositorySetListItem>, Integer, Hash)>] Array<RepositorySetListItem> data, response status code and response headers
    def list_reposets_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReposetApi.list_reposets ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReposetApi.list_reposets"
      end
      # resource path
      local_var_path = '/reposets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RepositorySetListItem>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReposetApi.list_reposets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposetApi#list_reposets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to update.
    # @param [Hash] opts the optional parameters
    # @option opts [RepositorySetWithName] :body 
    # @return [Object]
    def update_reposet(id, opts = {})
      data, _status_code, _headers = update_reposet_with_http_info(id, opts)
      data
    end

    # 🛡️👤 Update a repository set. The user must be an admin of the account that owns the reposet.
    # @param id [Integer] Numeric identifier of the repository set to update.
    # @param [Hash] opts the optional parameters
    # @option opts [RepositorySetWithName] :body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_reposet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReposetApi.update_reposet ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReposetApi.update_reposet"
      end
      # resource path
      local_var_path = '/reposet/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ReposetApi.update_reposet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReposetApi#update_reposet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
