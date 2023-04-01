=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::HistogramsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HistogramsApi' do
  before do
    # run before each test
    @api_instance = Athenian::HistogramsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HistogramsApi' do
    it 'should create an instance of HistogramsApi' do
      expect(@api_instance).to be_instance_of(Athenian::HistogramsApi)
    end
  end

  # unit tests for calc_histogram_code_checks
  # Calculate histograms on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.
  # @param body Select the check runs of interest and the metrics to calculate.
  # @param [Hash] opts the optional parameters
  # @return [Array<CalculatedCodeCheckHistogram>]
  describe 'calc_histogram_code_checks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for calc_histogram_jira
  # Calculate histograms over JIRA issue activities.
  # @param body Query for selecting JIRA issues and binned activities.
  # @param [Hash] opts the optional parameters
  # @return [Array<CalculatedJIRAHistogram>]
  describe 'calc_histogram_jira test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for calc_histogram_prs
  # Calculate histograms over PR distributions.
  # @param body Desired histogram definitions.
  # @param [Hash] opts the optional parameters
  # @return [Array<CalculatedPullRequestHistogram>]
  describe 'calc_histogram_prs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
