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
  # List of enable/disable applications on the sub-account
  class SubAccountAppsToggleRequest
    # Set this field to enable or disable Inbox on the sub-account / Not applicable on ENTv2
    attr_accessor :inbox

    # Set this field to enable or disable Whatsapp campaigns on the sub-account
    attr_accessor :whatsapp

    # Set this field to enable or disable Automation on the sub-account
    attr_accessor :automation

    # Set this field to enable or disable Email Campaigns on the sub-account
    attr_accessor :email_campaigns

    # Set this field to enable or disable SMS Marketing on the sub-account
    attr_accessor :sms_campaigns

    # Set this field to enable or disable Landing pages on the sub-account
    attr_accessor :landing_pages

    # Set this field to enable or disable Transactional Email on the sub-account
    attr_accessor :transactional_emails

    # Set this field to enable or disable Transactional SMS on the sub-account
    attr_accessor :transactional_sms

    # Set this field to enable or disable Facebook ads on the sub-account
    attr_accessor :facebook_ads

    # Set this field to enable or disable Web Push on the sub-account
    attr_accessor :web_push

    # Set this field to enable or disable Meetings on the sub-account
    attr_accessor :meetings

    # Set this field to enable or disable Conversations on the sub-account
    attr_accessor :conversations

    # Set this field to enable or disable Sales CRM on the sub-account
    attr_accessor :crm

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'inbox' => :'inbox',
        :'whatsapp' => :'whatsapp',
        :'automation' => :'automation',
        :'email_campaigns' => :'email-campaigns',
        :'sms_campaigns' => :'sms-campaigns',
        :'landing_pages' => :'landing-pages',
        :'transactional_emails' => :'transactional-emails',
        :'transactional_sms' => :'transactional-sms',
        :'facebook_ads' => :'facebook-ads',
        :'web_push' => :'web-push',
        :'meetings' => :'meetings',
        :'conversations' => :'conversations',
        :'crm' => :'crm'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'inbox' => :'Boolean',
        :'whatsapp' => :'Boolean',
        :'automation' => :'Boolean',
        :'email_campaigns' => :'Boolean',
        :'sms_campaigns' => :'Boolean',
        :'landing_pages' => :'Boolean',
        :'transactional_emails' => :'Boolean',
        :'transactional_sms' => :'Boolean',
        :'facebook_ads' => :'Boolean',
        :'web_push' => :'Boolean',
        :'meetings' => :'Boolean',
        :'conversations' => :'Boolean',
        :'crm' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::SubAccountAppsToggleRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::SubAccountAppsToggleRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'inbox')
        self.inbox = attributes[:'inbox']
      end

      if attributes.key?(:'whatsapp')
        self.whatsapp = attributes[:'whatsapp']
      end

      if attributes.key?(:'automation')
        self.automation = attributes[:'automation']
      end

      if attributes.key?(:'email_campaigns')
        self.email_campaigns = attributes[:'email_campaigns']
      end

      if attributes.key?(:'sms_campaigns')
        self.sms_campaigns = attributes[:'sms_campaigns']
      end

      if attributes.key?(:'landing_pages')
        self.landing_pages = attributes[:'landing_pages']
      end

      if attributes.key?(:'transactional_emails')
        self.transactional_emails = attributes[:'transactional_emails']
      end

      if attributes.key?(:'transactional_sms')
        self.transactional_sms = attributes[:'transactional_sms']
      end

      if attributes.key?(:'facebook_ads')
        self.facebook_ads = attributes[:'facebook_ads']
      end

      if attributes.key?(:'web_push')
        self.web_push = attributes[:'web_push']
      end

      if attributes.key?(:'meetings')
        self.meetings = attributes[:'meetings']
      end

      if attributes.key?(:'conversations')
        self.conversations = attributes[:'conversations']
      end

      if attributes.key?(:'crm')
        self.crm = attributes[:'crm']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inbox == o.inbox &&
          whatsapp == o.whatsapp &&
          automation == o.automation &&
          email_campaigns == o.email_campaigns &&
          sms_campaigns == o.sms_campaigns &&
          landing_pages == o.landing_pages &&
          transactional_emails == o.transactional_emails &&
          transactional_sms == o.transactional_sms &&
          facebook_ads == o.facebook_ads &&
          web_push == o.web_push &&
          meetings == o.meetings &&
          conversations == o.conversations &&
          crm == o.crm
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [inbox, whatsapp, automation, email_campaigns, sms_campaigns, landing_pages, transactional_emails, transactional_sms, facebook_ads, web_push, meetings, conversations, crm].hash
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
