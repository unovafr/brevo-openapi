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

# Unit tests for Brevo::GetCorporateInvitedUsersListUsersInnerFeatureAccess
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Brevo::GetCorporateInvitedUsersListUsersInnerFeatureAccess do
  let(:instance) { Brevo::GetCorporateInvitedUsersListUsersInnerFeatureAccess.new }

  describe 'test an instance of GetCorporateInvitedUsersListUsersInnerFeatureAccess' do
    it 'should create an instance of GetCorporateInvitedUsersListUsersInnerFeatureAccess' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Brevo::GetCorporateInvitedUsersListUsersInnerFeatureAccess)
    end
  end

  describe 'test attribute "user_management"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "api_keys"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "my_plan"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "apps_management"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end