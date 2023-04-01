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
  # Filters for `/metrics/deployments`. Nothing is strictly required. Achieve the best performance by packing all your filters in a single `ForSetDeployments` instead of sending multiple `ForSetDeployments`-s. For example, use `repogroups` and `withgroups` to request separate metrics for several repository sets and teams. 
  class ForSetDeployments
    # Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored.
    attr_accessor :repositories

    # Lists of indexes in `repositories` or `developers` that define independent groups that must be processed individually. The groups may have intersections.
    attr_accessor :repogroups

    attr_accessor :with

    # Alternative to `with` - calculate metrics for distinct filters separately.
    attr_accessor :withgroups

    # At least one of these labels must be present in at least one deployed PR.
    attr_accessor :pr_labels_include

    # None of these labels must be present in each deployed PR.
    attr_accessor :pr_labels_exclude

    attr_accessor :jira

    # Deployments should contain at least one of the specified label values. `null` matches any label value and effectively checks the label existence.
    attr_accessor :with_labels

    # Deployments may not contain the specified label values. `null` matches any label value and effectively ensures that the label does not exist.
    attr_accessor :without_labels

    # List of environments for which to calculate the metrics. We calculate the metrics for each environment independently. 
    attr_accessor :environments

    # List of environment groups for which to calculate the metrics. 
    attr_accessor :envgroups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'repositories' => :'repositories',
        :'repogroups' => :'repogroups',
        :'with' => :'with',
        :'withgroups' => :'withgroups',
        :'pr_labels_include' => :'pr_labels_include',
        :'pr_labels_exclude' => :'pr_labels_exclude',
        :'jira' => :'jira',
        :'with_labels' => :'with_labels',
        :'without_labels' => :'without_labels',
        :'environments' => :'environments',
        :'envgroups' => :'envgroups'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'repositories' => :'Array<String>',
        :'repogroups' => :'Array<Array<Integer>>',
        :'with' => :'DeploymentWith',
        :'withgroups' => :'Array<DeploymentWith>',
        :'pr_labels_include' => :'Array<String>',
        :'pr_labels_exclude' => :'Array<String>',
        :'jira' => :'JIRAFilter',
        :'with_labels' => :'Object',
        :'without_labels' => :'Object',
        :'environments' => :'Array<String>',
        :'envgroups' => :'Array<Array<String>>'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::ForSetDeployments` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::ForSetDeployments`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'repositories')
        if (value = attributes[:'repositories']).is_a?(Array)
          self.repositories = value
        end
      end

      if attributes.key?(:'repogroups')
        if (value = attributes[:'repogroups']).is_a?(Array)
          self.repogroups = value
        end
      end

      if attributes.key?(:'with')
        self.with = attributes[:'with']
      end

      if attributes.key?(:'withgroups')
        if (value = attributes[:'withgroups']).is_a?(Array)
          self.withgroups = value
        end
      end

      if attributes.key?(:'pr_labels_include')
        if (value = attributes[:'pr_labels_include']).is_a?(Array)
          self.pr_labels_include = value
        end
      end

      if attributes.key?(:'pr_labels_exclude')
        if (value = attributes[:'pr_labels_exclude']).is_a?(Array)
          self.pr_labels_exclude = value
        end
      end

      if attributes.key?(:'jira')
        self.jira = attributes[:'jira']
      end

      if attributes.key?(:'with_labels')
        self.with_labels = attributes[:'with_labels']
      end

      if attributes.key?(:'without_labels')
        self.without_labels = attributes[:'without_labels']
      end

      if attributes.key?(:'environments')
        if (value = attributes[:'environments']).is_a?(Array)
          self.environments = value
        end
      end

      if attributes.key?(:'envgroups')
        if (value = attributes[:'envgroups']).is_a?(Array)
          self.envgroups = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@repogroups.nil? && @repogroups.length < 1
        invalid_properties.push('invalid value for "repogroups", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@repogroups.nil? && @repogroups.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] repogroups Value to be assigned
    def repogroups=(repogroups)
      if !repogroups.nil? && repogroups.length < 1
        fail ArgumentError, 'invalid value for "repogroups", number of items must be greater than or equal to 1.'
      end

      @repogroups = repogroups
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          repositories == o.repositories &&
          repogroups == o.repogroups &&
          with == o.with &&
          withgroups == o.withgroups &&
          pr_labels_include == o.pr_labels_include &&
          pr_labels_exclude == o.pr_labels_exclude &&
          jira == o.jira &&
          with_labels == o.with_labels &&
          without_labels == o.without_labels &&
          environments == o.environments &&
          envgroups == o.envgroups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [repositories, repogroups, with, withgroups, pr_labels_include, pr_labels_exclude, jira, with_labels, without_labels, environments, envgroups].hash
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
