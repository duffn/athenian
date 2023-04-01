=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @api_instance = Athenian::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@api_instance).to be_instance_of(Athenian::EventsApi)
    end
  end

  # unit tests for clear_precomputed_events
  # Reset the precomputed data related to the pushed events.
  # @param [Hash] opts the optional parameters
  # @option opts [DeleteEventsCacheRequest] :body 
  # @return [Object]
  describe 'clear_precomputed_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deployment_labels
  # Retrieve the labels associated with the deployment.
  # @param name Name of the deployment.
  # @param [Hash] opts the optional parameters
  # @return [GetDeploymentLabels200Response]
  describe 'get_deployment_labels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_deployment_labels
  # Modify the labels for the deployment applying the given instructions. 
  # @param name Name of the deployment.
  # @param [Hash] opts the optional parameters
  # @option opts [DeploymentModifyLabelsRequest] :body 
  # @return [GetDeploymentLabels200Response]
  describe 'modify_deployment_labels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for notify_deployments
  # Notify about new deployments.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<DeploymentNotification>] :body 
  # @return [NotifyDeployments200Response]
  describe 'notify_deployments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for notify_releases
  # Notify about new releases. The release settings must be set to \&quot;event\&quot;.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<ReleaseNotification>] :body 
  # @return [Array<ReleaseNotificationStatus>]
  describe 'notify_releases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end