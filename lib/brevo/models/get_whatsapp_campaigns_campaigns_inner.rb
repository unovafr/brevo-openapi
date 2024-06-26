=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@brevo.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Brevo
  class GetWhatsappCampaignsCampaignsInner
    # ID of the WhatsApp Campaign
    attr_accessor :id

    # Name of the WhatsApp Campaign
    attr_accessor :campaign_name

    # Id of the WhatsApp template
    attr_accessor :template_id

    # Status of the WhatsApp Campaign
    attr_accessor :campaign_status

    # UTC date-time on which WhatsApp campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format
    attr_accessor :scheduled_at

    # Error Reason associated with the WhatsApp campaign sending
    attr_accessor :error_reason

    # Count of invalidated contacts
    attr_accessor :invalidated_contacts

    # Read percentage of the the WhatsApp campaign created
    attr_accessor :read_percentage

    attr_accessor :stats

    # Creation UTC date-time of the WhatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # UTC date-time of last modification of the WhatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'campaign_name' => :'campaignName',
        :'template_id' => :'templateId',
        :'campaign_status' => :'campaignStatus',
        :'scheduled_at' => :'scheduledAt',
        :'error_reason' => :'errorReason',
        :'invalidated_contacts' => :'invalidatedContacts',
        :'read_percentage' => :'readPercentage',
        :'stats' => :'stats',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'campaign_name' => :'String',
        :'template_id' => :'String',
        :'campaign_status' => :'String',
        :'scheduled_at' => :'String',
        :'error_reason' => :'String',
        :'invalidated_contacts' => :'Integer',
        :'read_percentage' => :'Float',
        :'stats' => :'WhatsappCampStats',
        :'created_at' => :'String',
        :'modified_at' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::GetWhatsappCampaignsCampaignsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::GetWhatsappCampaignsCampaignsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'campaign_name')
        self.campaign_name = attributes[:'campaign_name']
      else
        self.campaign_name = nil
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      else
        self.template_id = nil
      end

      if attributes.key?(:'campaign_status')
        self.campaign_status = attributes[:'campaign_status']
      else
        self.campaign_status = nil
      end

      if attributes.key?(:'scheduled_at')
        self.scheduled_at = attributes[:'scheduled_at']
      else
        self.scheduled_at = nil
      end

      if attributes.key?(:'error_reason')
        self.error_reason = attributes[:'error_reason']
      end

      if attributes.key?(:'invalidated_contacts')
        self.invalidated_contacts = attributes[:'invalidated_contacts']
      end

      if attributes.key?(:'read_percentage')
        self.read_percentage = attributes[:'read_percentage']
      end

      if attributes.key?(:'stats')
        self.stats = attributes[:'stats']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      else
        self.modified_at = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @campaign_name.nil?
        invalid_properties.push('invalid value for "campaign_name", campaign_name cannot be nil.')
      end

      if @template_id.nil?
        invalid_properties.push('invalid value for "template_id", template_id cannot be nil.')
      end

      if @campaign_status.nil?
        invalid_properties.push('invalid value for "campaign_status", campaign_status cannot be nil.')
      end

      if @scheduled_at.nil?
        invalid_properties.push('invalid value for "scheduled_at", scheduled_at cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @modified_at.nil?
        invalid_properties.push('invalid value for "modified_at", modified_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @campaign_name.nil?
      return false if @template_id.nil?
      return false if @campaign_status.nil?
      campaign_status_validator = EnumAttributeValidator.new('String', ["draft", "scheduled", "pending", "approved", "running", "suspended", "rejected", "sent"])
      return false unless campaign_status_validator.valid?(@campaign_status)
      return false if @scheduled_at.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_status Object to be assigned
    def campaign_status=(campaign_status)
      validator = EnumAttributeValidator.new('String', ["draft", "scheduled", "pending", "approved", "running", "suspended", "rejected", "sent"])
      unless validator.valid?(campaign_status)
        fail ArgumentError, "invalid value for \"campaign_status\", must be one of #{validator.allowable_values}."
      end
      @campaign_status = campaign_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          campaign_name == o.campaign_name &&
          template_id == o.template_id &&
          campaign_status == o.campaign_status &&
          scheduled_at == o.scheduled_at &&
          error_reason == o.error_reason &&
          invalidated_contacts == o.invalidated_contacts &&
          read_percentage == o.read_percentage &&
          stats == o.stats &&
          created_at == o.created_at &&
          modified_at == o.modified_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, campaign_name, template_id, campaign_status, scheduled_at, error_reason, invalidated_contacts, read_percentage, stats, created_at, modified_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = Brevo.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
