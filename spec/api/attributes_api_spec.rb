=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Brevo::AttributesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AttributesApi' do
  before do
    # run before each test
    @api_instance = Brevo::AttributesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AttributesApi' do
    it 'should create an instance of AttributesApi' do
      expect(@api_instance).to be_instance_of(Brevo::AttributesApi)
    end
  end

  # unit tests for create_attribute
  # Create contact attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the attribute
  # @param create_attribute Values to create an attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_attribute test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_attribute
  # Delete an attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the existing attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_attribute test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_attributes
  # List all attributes
  # @param [Hash] opts the optional parameters
  # @return [GetAttributes]
  describe 'get_attributes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_attribute
  # Update contact attribute
  # @param attribute_category Category of the attribute
  # @param attribute_name Name of the existing attribute
  # @param update_attribute Values to update an attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_attribute test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
