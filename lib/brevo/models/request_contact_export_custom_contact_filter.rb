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
  # Set the filter for the contacts to be exported. 
  class RequestContactExportCustomContactFilter
    # **Mandatory if neither actionForEmailCampaigns nor actionForSmsCampaigns is passed.** This will export the contacts on the basis of provided action applied on contacts as per the list id. * **allContacts** - Fetch the list of all contacts for a particular list. * **subscribed & unsubscribed** - Fetch the list of subscribed / unsubscribed (blacklisted via any means) contacts for a particular list. * **unsubscribedPerList** - Fetch the list of contacts that are unsubscribed from a particular list only. 
    attr_accessor :action_for_contacts

    # **Mandatory if neither actionForContacts nor actionForSmsCampaigns is passed.** This will export the contacts on the basis of provided action applied on email campaigns. * **openers & nonOpeners** - emailCampaignId is mandatory. Fetch the list of readers / non-readers for a particular email campaign. * **clickers & nonClickers** - emailCampaignId is mandatory. Fetch the list of clickers / non-clickers for a particular email campaign. * **unsubscribed** - emailCampaignId is mandatory. Fetch the list of all unsubscribed (blacklisted via any means) contacts for a particular email campaign. * **hardBounces & softBounces** - emailCampaignId is optional. Fetch the list of hard bounces / soft bounces for a particular / all email campaign(s). 
    attr_accessor :action_for_email_campaigns

    # **Mandatory if neither actionForContacts nor actionForEmailCampaigns is passed.** This will export the contacts on the basis of provided action applied on sms campaigns. * **unsubscribed** - Fetch the list of all unsubscribed (blacklisted via any means) contacts for all / particular sms campaigns. * **hardBounces & softBounces** - Fetch the list of hard bounces / soft bounces for all / particular sms campaigns. 
    attr_accessor :action_for_sms_campaigns

    # **Mandatory if actionForContacts is passed, ignored otherwise.** Id of the list for which the corresponding action shall be applied in the filter. 
    attr_accessor :list_id

    # Considered only if **actionForEmailCampaigns** is passed, ignored otherwise. **Mandatory if action is one of the following - openers, nonOpeners, clickers, nonClickers, unsubscribed.** The id of the email campaign for which the corresponding action shall be applied in the filter. 
    attr_accessor :email_campaign_id

    # Considered only if **actionForSmsCampaigns** is passed, ignored otherwise. The id of sms campaign for which the corresponding action shall be applied in the filter. 
    attr_accessor :sms_campaign_id

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
        :'action_for_contacts' => :'actionForContacts',
        :'action_for_email_campaigns' => :'actionForEmailCampaigns',
        :'action_for_sms_campaigns' => :'actionForSmsCampaigns',
        :'list_id' => :'listId',
        :'email_campaign_id' => :'emailCampaignId',
        :'sms_campaign_id' => :'smsCampaignId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_for_contacts' => :'String',
        :'action_for_email_campaigns' => :'String',
        :'action_for_sms_campaigns' => :'String',
        :'list_id' => :'Integer',
        :'email_campaign_id' => :'Integer',
        :'sms_campaign_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::RequestContactExportCustomContactFilter` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::RequestContactExportCustomContactFilter`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action_for_contacts')
        self.action_for_contacts = attributes[:'action_for_contacts']
      end

      if attributes.key?(:'action_for_email_campaigns')
        self.action_for_email_campaigns = attributes[:'action_for_email_campaigns']
      end

      if attributes.key?(:'action_for_sms_campaigns')
        self.action_for_sms_campaigns = attributes[:'action_for_sms_campaigns']
      end

      if attributes.key?(:'list_id')
        self.list_id = attributes[:'list_id']
      end

      if attributes.key?(:'email_campaign_id')
        self.email_campaign_id = attributes[:'email_campaign_id']
      end

      if attributes.key?(:'sms_campaign_id')
        self.sms_campaign_id = attributes[:'sms_campaign_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      action_for_contacts_validator = EnumAttributeValidator.new('String', ["allContacts", "subscribed", "unsubscribed", "unsubscribedPerList"])
      return false unless action_for_contacts_validator.valid?(@action_for_contacts)
      action_for_email_campaigns_validator = EnumAttributeValidator.new('String', ["openers", "nonOpeners", "clickers", "nonClickers", "unsubscribed", "hardBounces", "softBounces"])
      return false unless action_for_email_campaigns_validator.valid?(@action_for_email_campaigns)
      action_for_sms_campaigns_validator = EnumAttributeValidator.new('String', ["hardBounces", "softBounces", "unsubscribed"])
      return false unless action_for_sms_campaigns_validator.valid?(@action_for_sms_campaigns)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_contacts Object to be assigned
    def action_for_contacts=(action_for_contacts)
      validator = EnumAttributeValidator.new('String', ["allContacts", "subscribed", "unsubscribed", "unsubscribedPerList"])
      unless validator.valid?(action_for_contacts)
        fail ArgumentError, "invalid value for \"action_for_contacts\", must be one of #{validator.allowable_values}."
      end
      @action_for_contacts = action_for_contacts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_email_campaigns Object to be assigned
    def action_for_email_campaigns=(action_for_email_campaigns)
      validator = EnumAttributeValidator.new('String', ["openers", "nonOpeners", "clickers", "nonClickers", "unsubscribed", "hardBounces", "softBounces"])
      unless validator.valid?(action_for_email_campaigns)
        fail ArgumentError, "invalid value for \"action_for_email_campaigns\", must be one of #{validator.allowable_values}."
      end
      @action_for_email_campaigns = action_for_email_campaigns
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_for_sms_campaigns Object to be assigned
    def action_for_sms_campaigns=(action_for_sms_campaigns)
      validator = EnumAttributeValidator.new('String', ["hardBounces", "softBounces", "unsubscribed"])
      unless validator.valid?(action_for_sms_campaigns)
        fail ArgumentError, "invalid value for \"action_for_sms_campaigns\", must be one of #{validator.allowable_values}."
      end
      @action_for_sms_campaigns = action_for_sms_campaigns
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_for_contacts == o.action_for_contacts &&
          action_for_email_campaigns == o.action_for_email_campaigns &&
          action_for_sms_campaigns == o.action_for_sms_campaigns &&
          list_id == o.list_id &&
          email_campaign_id == o.email_campaign_id &&
          sms_campaign_id == o.sms_campaign_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_for_contacts, action_for_email_campaigns, action_for_sms_campaigns, list_id, email_campaign_id, sms_campaign_id].hash
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
