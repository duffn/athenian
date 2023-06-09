=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.86 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.86.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'date'
require 'time'

module Athenian
  # Calculated release metric values.
  class CalculatedReleaseMetric
    # Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored.
    attr_accessor :_for

    attr_accessor :with

    attr_accessor :jira

    # Applied release matching strategies for the repositories in `for`.
    attr_accessor :matches

    attr_accessor :metrics

    # How often the metrics are reported. The value must satisfy the following regular expression: /^all|(([1-9]\\d* )?(aligned )?(day|week|month|year))$/. \"all\" produces a single interval [`date_from`, `date_to`]. \"aligned week/month/year\" produces intervals cut by calendar week/month/year borders, for example, when `date_from` is `2020-01-15` and `date_to` is `2020-03-10`, the intervals will be `2020-01-15` - `2020-02-01` - `2020-03-01` - `2020-03-10`.
    attr_accessor :granularity

    # The sequence steps from `date_from` till `date_to` by `granularity`.
    attr_accessor :values

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_for' => :'for',
        :'with' => :'with',
        :'jira' => :'jira',
        :'matches' => :'matches',
        :'metrics' => :'metrics',
        :'granularity' => :'granularity',
        :'values' => :'values'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_for' => :'Array<String>',
        :'with' => :'ReleaseWith',
        :'jira' => :'JIRAFilter',
        :'matches' => :'Hash<String, ReleaseMatchStrategy>',
        :'metrics' => :'Array<ReleaseMetricID>',
        :'granularity' => :'String',
        :'values' => :'Array<CalculatedLinearMetricValues>'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::CalculatedReleaseMetric` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::CalculatedReleaseMetric`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_for')
        if (value = attributes[:'_for']).is_a?(Array)
          self._for = value
        end
      end

      if attributes.key?(:'with')
        self.with = attributes[:'with']
      end

      if attributes.key?(:'jira')
        self.jira = attributes[:'jira']
      end

      if attributes.key?(:'matches')
        if (value = attributes[:'matches']).is_a?(Hash)
          self.matches = value
        end
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'granularity')
        self.granularity = attributes[:'granularity']
      end

      if attributes.key?(:'values')
        if (value = attributes[:'values']).is_a?(Array)
          self.values = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @matches.nil?
        invalid_properties.push('invalid value for "matches", matches cannot be nil.')
      end

      if @metrics.nil?
        invalid_properties.push('invalid value for "metrics", metrics cannot be nil.')
      end

      if @granularity.nil?
        invalid_properties.push('invalid value for "granularity", granularity cannot be nil.')
      end

      if @values.nil?
        invalid_properties.push('invalid value for "values", values cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @matches.nil?
      return false if @metrics.nil?
      return false if @granularity.nil?
      return false if @values.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _for == o._for &&
          with == o.with &&
          jira == o.jira &&
          matches == o.matches &&
          metrics == o.metrics &&
          granularity == o.granularity &&
          values == o.values
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_for, with, jira, matches, metrics, granularity, values].hash
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
