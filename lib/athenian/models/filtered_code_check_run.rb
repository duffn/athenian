=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'date'
require 'time'

module Athenian
  # Mined information about a code check run.
  class FilteredCodeCheckRun
    # Unique name of the check run.
    attr_accessor :title

    # Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \".git\" should be appended. We support a special syntax for repository sets: \"{reposet id}\" adds all the repositories from the given set. 
    attr_accessor :repository

    # Timestamp of when the check run launched the latest.
    attr_accessor :last_execution_time

    # Link to the check run that launched the latest.
    attr_accessor :last_execution_url

    attr_accessor :total_stats

    attr_accessor :prs_stats

    # Check suite sizes this check run belongs to.
    attr_accessor :size_groups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'repository' => :'repository',
        :'last_execution_time' => :'last_execution_time',
        :'last_execution_url' => :'last_execution_url',
        :'total_stats' => :'total_stats',
        :'prs_stats' => :'prs_stats',
        :'size_groups' => :'size_groups'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'title' => :'String',
        :'repository' => :'String',
        :'last_execution_time' => :'Time',
        :'last_execution_url' => :'String',
        :'total_stats' => :'FilteredCodeCheckRunTotalStats',
        :'prs_stats' => :'FilteredCodeCheckRunPrsStats',
        :'size_groups' => :'Array<Integer>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::FilteredCodeCheckRun` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::FilteredCodeCheckRun`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'repository')
        self.repository = attributes[:'repository']
      end

      if attributes.key?(:'last_execution_time')
        self.last_execution_time = attributes[:'last_execution_time']
      end

      if attributes.key?(:'last_execution_url')
        self.last_execution_url = attributes[:'last_execution_url']
      end

      if attributes.key?(:'total_stats')
        self.total_stats = attributes[:'total_stats']
      end

      if attributes.key?(:'prs_stats')
        self.prs_stats = attributes[:'prs_stats']
      end

      if attributes.key?(:'size_groups')
        if (value = attributes[:'size_groups']).is_a?(Array)
          self.size_groups = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @repository.nil?
        invalid_properties.push('invalid value for "repository", repository cannot be nil.')
      end

      if @last_execution_time.nil?
        invalid_properties.push('invalid value for "last_execution_time", last_execution_time cannot be nil.')
      end

      if @total_stats.nil?
        invalid_properties.push('invalid value for "total_stats", total_stats cannot be nil.')
      end

      if @prs_stats.nil?
        invalid_properties.push('invalid value for "prs_stats", prs_stats cannot be nil.')
      end

      if @size_groups.nil?
        invalid_properties.push('invalid value for "size_groups", size_groups cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @repository.nil?
      return false if @last_execution_time.nil?
      return false if @total_stats.nil?
      return false if @prs_stats.nil?
      return false if @size_groups.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          repository == o.repository &&
          last_execution_time == o.last_execution_time &&
          last_execution_url == o.last_execution_url &&
          total_stats == o.total_stats &&
          prs_stats == o.prs_stats &&
          size_groups == o.size_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, repository, last_execution_time, last_execution_url, total_stats, prs_stats, size_groups].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Athenian.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end