=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Athenian::PullRequestParticipant
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Athenian::PullRequestParticipant do
  let(:instance) { Athenian::PullRequestParticipant.new }

  describe 'test an instance of PullRequestParticipant' do
    it 'should create an instance of PullRequestParticipant' do
      expect(instance).to be_instance_of(Athenian::PullRequestParticipant)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["author", "reviewer", "commit_author", "commit_committer", "commenter", "merger", "releaser"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
