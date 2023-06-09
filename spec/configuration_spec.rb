=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.86 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.86.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'spec_helper'

describe Athenian::Configuration do
  let(:config) { Athenian::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.athenian.co/v1")
    # Athenian.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.athenian.co/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.athenian.co/v1")
      end
    end
  end
end
