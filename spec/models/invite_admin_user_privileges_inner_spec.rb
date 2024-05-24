=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@brevo.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Brevo::InviteAdminUserPrivilegesInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Brevo::InviteAdminUserPrivilegesInner do
  let(:instance) { Brevo::InviteAdminUserPrivilegesInner.new }

  describe 'test an instance of InviteAdminUserPrivilegesInner' do
    it 'should create an instance of InviteAdminUserPrivilegesInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Brevo::InviteAdminUserPrivilegesInner)
    end
  end

  describe 'test attribute "feature"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["my_plan", "api", "user_management", "app_management"])
      # validator.allowable_values.each do |value|
      #   expect { instance.feature = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["all", "none"])
      # validator.allowable_values.each do |value|
      #   expect { instance.permissions = value }.not_to raise_error
      # end
    end
  end

end
