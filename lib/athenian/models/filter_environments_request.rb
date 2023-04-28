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
  # Request body of `/filter/environments`. Filters for deployment environments.
  class FilterEnvironmentsRequest
    # Account ID.
    attr_accessor :account

    attr_accessor :repositories

    # Date from when to start looking for deployments.
    attr_accessor :date_from

    # Date until which to look for deployments.
    attr_accessor :date_to

    # Local time zone offset in minutes, used to adjust `date_from` and `date_to`.
    attr_accessor :timezone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'repositories' => :'repositories',
        :'date_from' => :'date_from',
        :'date_to' => :'date_to',
        :'timezone' => :'timezone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account' => :'Integer',
        :'repositories' => :'Array',
        :'date_from' => :'Date',
        :'date_to' => :'Date',
        :'timezone' => :'Integer'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::FilterEnvironmentsRequest` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::FilterEnvironmentsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'repositories')
        self.repositories = attributes[:'repositories']
      end

      if attributes.key?(:'date_from')
        self.date_from = attributes[:'date_from']
      end

      if attributes.key?(:'date_to')
        self.date_to = attributes[:'date_to']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      if @date_from.nil?
        invalid_properties.push('invalid value for "date_from", date_from cannot be nil.')
      end

      if @date_to.nil?
        invalid_properties.push('invalid value for "date_to", date_to cannot be nil.')
      end

      if !@timezone.nil? && @timezone > 780
        invalid_properties.push('invalid value for "timezone", must be smaller than or equal to 780.')
      end

      if !@timezone.nil? && @timezone < -720
        invalid_properties.push('invalid value for "timezone", must be greater than or equal to -720.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.nil?
      return false if @date_from.nil?
      return false if @date_to.nil?
      return false if !@timezone.nil? && @timezone > 780
      return false if !@timezone.nil? && @timezone < -720
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] timezone Value to be assigned
    def timezone=(timezone)
      if !timezone.nil? && timezone > 780
        fail ArgumentError, 'invalid value for "timezone", must be smaller than or equal to 780.'
      end

      if !timezone.nil? && timezone < -720
        fail ArgumentError, 'invalid value for "timezone", must be greater than or equal to -720.'
      end

      @timezone = timezone
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          repositories == o.repositories &&
          date_from == o.date_from &&
          date_to == o.date_to &&
          timezone == o.timezone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account, repositories, date_from, date_to, timezone].hash
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
