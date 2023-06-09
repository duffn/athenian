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
  # Time spent by the PR in each pipeline stage. The deployments are independent of the releases. If the release happens before the deployment, the deployment time measures from the release event. If the release happens after the deployment, the two values are independent and both measure from the PR merge event. 
  class StageTimings
    # Time duration value.
    attr_accessor :wip

    # Time duration value.
    attr_accessor :review

    # Time duration value.
    attr_accessor :merge

    # Time duration value.
    attr_accessor :release

    # Map from target environments to the values.
    attr_accessor :deploy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'wip' => :'wip',
        :'review' => :'review',
        :'merge' => :'merge',
        :'release' => :'release',
        :'deploy' => :'deploy'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'wip' => :'String',
        :'review' => :'String',
        :'merge' => :'String',
        :'release' => :'String',
        :'deploy' => :'Hash<String, String>'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::StageTimings` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::StageTimings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'wip')
        self.wip = attributes[:'wip']
      end

      if attributes.key?(:'review')
        self.review = attributes[:'review']
      end

      if attributes.key?(:'merge')
        self.merge = attributes[:'merge']
      end

      if attributes.key?(:'release')
        self.release = attributes[:'release']
      end

      if attributes.key?(:'deploy')
        if (value = attributes[:'deploy']).is_a?(Hash)
          self.deploy = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @wip.nil?
        invalid_properties.push('invalid value for "wip", wip cannot be nil.')
      end

      pattern = Regexp.new(/^\d+s$/)
      if @wip !~ pattern
        invalid_properties.push("invalid value for \"wip\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\d+s$/)
      if !@review.nil? && @review !~ pattern
        invalid_properties.push("invalid value for \"review\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\d+s$/)
      if !@merge.nil? && @merge !~ pattern
        invalid_properties.push("invalid value for \"merge\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\d+s$/)
      if !@release.nil? && @release !~ pattern
        invalid_properties.push("invalid value for \"release\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @wip.nil?
      return false if @wip !~ Regexp.new(/^\d+s$/)
      return false if !@review.nil? && @review !~ Regexp.new(/^\d+s$/)
      return false if !@merge.nil? && @merge !~ Regexp.new(/^\d+s$/)
      return false if !@release.nil? && @release !~ Regexp.new(/^\d+s$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] wip Value to be assigned
    def wip=(wip)
      if wip.nil?
        fail ArgumentError, 'wip cannot be nil'
      end

      pattern = Regexp.new(/^\d+s$/)
      if wip !~ pattern
        fail ArgumentError, "invalid value for \"wip\", must conform to the pattern #{pattern}."
      end

      @wip = wip
    end

    # Custom attribute writer method with validation
    # @param [Object] review Value to be assigned
    def review=(review)
      pattern = Regexp.new(/^\d+s$/)
      if !review.nil? && review !~ pattern
        fail ArgumentError, "invalid value for \"review\", must conform to the pattern #{pattern}."
      end

      @review = review
    end

    # Custom attribute writer method with validation
    # @param [Object] merge Value to be assigned
    def merge=(merge)
      pattern = Regexp.new(/^\d+s$/)
      if !merge.nil? && merge !~ pattern
        fail ArgumentError, "invalid value for \"merge\", must conform to the pattern #{pattern}."
      end

      @merge = merge
    end

    # Custom attribute writer method with validation
    # @param [Object] release Value to be assigned
    def release=(release)
      pattern = Regexp.new(/^\d+s$/)
      if !release.nil? && release !~ pattern
        fail ArgumentError, "invalid value for \"release\", must conform to the pattern #{pattern}."
      end

      @release = release
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          wip == o.wip &&
          review == o.review &&
          merge == o.merge &&
          release == o.release &&
          deploy == o.deploy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [wip, review, merge, release, deploy].hash
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
