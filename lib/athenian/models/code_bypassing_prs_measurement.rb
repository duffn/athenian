=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.85 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.85.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'date'
require 'time'

module Athenian
  # Statistics about code pushed outside of pull requests in a certain time interval.
  class CodeBypassingPRsMeasurement
    # Commits were pushed beginning with this date. They were not pushed later than +granularity.
    attr_accessor :date

    # Number of commits that bypassed PRs in the time interval.
    attr_accessor :bypassed_commits

    # Number of changed (added + removed) lines that bypassed PRs in the time interval.
    attr_accessor :bypassed_lines

    # Overall number of commits in the time interval.
    attr_accessor :total_commits

    # Overall number of changed (added + removed) lines in the time interval.
    attr_accessor :total_lines

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'bypassed_commits' => :'bypassed_commits',
        :'bypassed_lines' => :'bypassed_lines',
        :'total_commits' => :'total_commits',
        :'total_lines' => :'total_lines'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date' => :'Date',
        :'bypassed_commits' => :'Integer',
        :'bypassed_lines' => :'Integer',
        :'total_commits' => :'Integer',
        :'total_lines' => :'Integer'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::CodeBypassingPRsMeasurement` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::CodeBypassingPRsMeasurement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'bypassed_commits')
        self.bypassed_commits = attributes[:'bypassed_commits']
      end

      if attributes.key?(:'bypassed_lines')
        self.bypassed_lines = attributes[:'bypassed_lines']
      end

      if attributes.key?(:'total_commits')
        self.total_commits = attributes[:'total_commits']
      end

      if attributes.key?(:'total_lines')
        self.total_lines = attributes[:'total_lines']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @bypassed_commits.nil?
        invalid_properties.push('invalid value for "bypassed_commits", bypassed_commits cannot be nil.')
      end

      if @bypassed_commits < 0
        invalid_properties.push('invalid value for "bypassed_commits", must be greater than or equal to 0.')
      end

      if @bypassed_lines.nil?
        invalid_properties.push('invalid value for "bypassed_lines", bypassed_lines cannot be nil.')
      end

      if @bypassed_lines < 0
        invalid_properties.push('invalid value for "bypassed_lines", must be greater than or equal to 0.')
      end

      if @total_commits.nil?
        invalid_properties.push('invalid value for "total_commits", total_commits cannot be nil.')
      end

      if @total_commits < 0
        invalid_properties.push('invalid value for "total_commits", must be greater than or equal to 0.')
      end

      if @total_lines.nil?
        invalid_properties.push('invalid value for "total_lines", total_lines cannot be nil.')
      end

      if @total_lines < 0
        invalid_properties.push('invalid value for "total_lines", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date.nil?
      return false if @bypassed_commits.nil?
      return false if @bypassed_commits < 0
      return false if @bypassed_lines.nil?
      return false if @bypassed_lines < 0
      return false if @total_commits.nil?
      return false if @total_commits < 0
      return false if @total_lines.nil?
      return false if @total_lines < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bypassed_commits Value to be assigned
    def bypassed_commits=(bypassed_commits)
      if bypassed_commits.nil?
        fail ArgumentError, 'bypassed_commits cannot be nil'
      end

      if bypassed_commits < 0
        fail ArgumentError, 'invalid value for "bypassed_commits", must be greater than or equal to 0.'
      end

      @bypassed_commits = bypassed_commits
    end

    # Custom attribute writer method with validation
    # @param [Object] bypassed_lines Value to be assigned
    def bypassed_lines=(bypassed_lines)
      if bypassed_lines.nil?
        fail ArgumentError, 'bypassed_lines cannot be nil'
      end

      if bypassed_lines < 0
        fail ArgumentError, 'invalid value for "bypassed_lines", must be greater than or equal to 0.'
      end

      @bypassed_lines = bypassed_lines
    end

    # Custom attribute writer method with validation
    # @param [Object] total_commits Value to be assigned
    def total_commits=(total_commits)
      if total_commits.nil?
        fail ArgumentError, 'total_commits cannot be nil'
      end

      if total_commits < 0
        fail ArgumentError, 'invalid value for "total_commits", must be greater than or equal to 0.'
      end

      @total_commits = total_commits
    end

    # Custom attribute writer method with validation
    # @param [Object] total_lines Value to be assigned
    def total_lines=(total_lines)
      if total_lines.nil?
        fail ArgumentError, 'total_lines cannot be nil'
      end

      if total_lines < 0
        fail ArgumentError, 'invalid value for "total_lines", must be greater than or equal to 0.'
      end

      @total_lines = total_lines
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          bypassed_commits == o.bypassed_commits &&
          bypassed_lines == o.bypassed_lines &&
          total_commits == o.total_commits &&
          total_lines == o.total_lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, bypassed_commits, bypassed_lines, total_commits, total_lines].hash
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
