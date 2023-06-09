=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::SecurityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityApi' do
  before do
    # run before each test
    @api_instance = Athenian::SecurityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityApi' do
    it 'should create an instance of SecurityApi' do
      expect(@api_instance).to be_instance_of(Athenian::SecurityApi)
    end
  end

  # unit tests for create_token
  # 👤 Create a new Personal Access Token for the calling user and the specified account.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateTokenRequest] :body 
  # @return [CreatedToken]
  describe 'create_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_token
  # 👤 Delete a Personal Access Token belonging to the user.
  # @param id Numeric identifier of the token.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tokens
  # List Personal Access Tokens of the user in the account.
  # @param id Numeric identifier of the account.
  # @param [Hash] opts the optional parameters
  # @return [Array<ListedToken>]
  describe 'list_tokens test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_token
  # 👤 Change Personal Access Token&#39;s details.
  # @param id Numeric identifier of the token.
  # @param [Hash] opts the optional parameters
  # @option opts [PatchTokenRequest] :body 
  # @return [Object]
  describe 'patch_token test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
