=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'cgi'

module Athenian
  class SecurityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 👤 Create a new Personal Access Token for the calling user and the specified account.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTokenRequest] :body 
    # @return [CreatedToken]
    def create_token(opts = {})
      data, _status_code, _headers = create_token_with_http_info(opts)
      data
    end

    # 👤 Create a new Personal Access Token for the calling user and the specified account.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTokenRequest] :body 
    # @return [Array<(CreatedToken, Integer, Hash)>] CreatedToken data, response status code and response headers
    def create_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.create_token ...'
      end
      # resource path
      local_var_path = '/token/create'

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
      return_type = opts[:debug_return_type] || 'CreatedToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityApi.create_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#create_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Delete a Personal Access Token belonging to the user.
    # @param id [Integer] Numeric identifier of the token.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_token(id, opts = {})
      data, _status_code, _headers = delete_token_with_http_info(id, opts)
      data
    end

    # 👤 Delete a Personal Access Token belonging to the user.
    # @param id [Integer] Numeric identifier of the token.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_token_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.delete_token ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityApi.delete_token"
      end
      # resource path
      local_var_path = '/token/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"SecurityApi.delete_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#delete_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Personal Access Tokens of the user in the account.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<ListedToken>]
    def list_tokens(id, opts = {})
      data, _status_code, _headers = list_tokens_with_http_info(id, opts)
      data
    end

    # List Personal Access Tokens of the user in the account.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ListedToken>, Integer, Hash)>] Array<ListedToken> data, response status code and response headers
    def list_tokens_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.list_tokens ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityApi.list_tokens"
      end
      # resource path
      local_var_path = '/tokens/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ListedToken>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SecurityApi.list_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#list_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Change Personal Access Token's details.
    # @param id [Integer] Numeric identifier of the token.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchTokenRequest] :body 
    # @return [Object]
    def patch_token(id, opts = {})
      data, _status_code, _headers = patch_token_with_http_info(id, opts)
      data
    end

    # 👤 Change Personal Access Token&#39;s details.
    # @param id [Integer] Numeric identifier of the token.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchTokenRequest] :body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def patch_token_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SecurityApi.patch_token ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SecurityApi.patch_token"
      end
      # resource path
      local_var_path = '/token/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"SecurityApi.patch_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SecurityApi#patch_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
