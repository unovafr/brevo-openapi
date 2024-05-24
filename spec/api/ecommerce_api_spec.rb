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

# Unit tests for Brevo::EcommerceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EcommerceApi' do
  before do
    # run before each test
    @api_instance = Brevo::EcommerceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EcommerceApi' do
    it 'should create an instance of EcommerceApi' do
      expect(@api_instance).to be_instance_of(Brevo::EcommerceApi)
    end
  end

  # unit tests for create_batch_order
  # Create orders in batch
  # Create multiple orders at one time instead of one order at a time
  # @param order_batch 
  # @param [Hash] opts the optional parameters
  # @return [CreatedBatchId]
  describe 'create_batch_order test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_order
  # Managing the status of the order
  # Manages the transactional status of the order
  # @param order 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_order test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_update_batch_category
  # Create categories in batch
  # @param create_update_batch_category Values to create a batch of categories
  # @param [Hash] opts the optional parameters
  # @return [CreateUpdateBatchCategoryModel]
  describe 'create_update_batch_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_update_batch_products
  # Create products in batch
  # @param create_update_batch_products Values to create a batch of products
  # @param [Hash] opts the optional parameters
  # @return [CreateUpdateBatchProductsModel]
  describe 'create_update_batch_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_update_category
  # Create/Update a category
  # @param create_update_category Values to create/update a category
  # @param [Hash] opts the optional parameters
  # @return [CreateCategoryModel]
  describe 'create_update_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_update_product
  # Create/Update a product
  # @param create_update_product Values to create/update a product
  # @param [Hash] opts the optional parameters
  # @return [CreateProductModel]
  describe 'create_update_product test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ecommerce_activate_post
  # Activate the eCommerce app
  # Getting access to Brevo eCommerce.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'ecommerce_activate_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ecommerce_attribution_metrics_conversion_source_conversion_source_id_get
  # Get detailed attribution metrics for a single Brevo campaign
  # @param conversion_source The Brevo campaign type for which data will be retrieved
  # @param conversion_source_id The Brevo campaign id for which data will be retrieved
  # @param [Hash] opts the optional parameters
  # @return [EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response]
  describe 'ecommerce_attribution_metrics_conversion_source_conversion_source_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ecommerce_attribution_metrics_get
  # Get attribution metrics for one or more Brevo campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :period_from When getting metrics for a specific period, define the starting datetime in RFC3339 format
  # @option opts [Time] :period_to When getting metrics for a specific period, define the end datetime in RFC3339 format
  # @option opts [Array<Float>] :email_campaign_id The email campaign id(s) to get metrics for
  # @return [EcommerceAttributionMetricsGet200Response]
  describe 'ecommerce_attribution_metrics_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ecommerce_attribution_products_conversion_source_conversion_source_id_get
  # Get attributed product sales for a single Brevo campaign
  # @param conversion_source The Brevo campaign type for which data will be retrieved
  # @param conversion_source_id The Brevo campaign id for which data will be retrieved
  # @param [Hash] opts the optional parameters
  # @return [EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response]
  describe 'ecommerce_attribution_products_conversion_source_conversion_source_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_categories
  # Return all your categories
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @option opts [Array<String>] :ids Filter by category ids
  # @option opts [String] :name Filter by category name
  # @option opts [String] :modified_since Filter (urlencoded) the categories modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @option opts [String] :created_since Filter (urlencoded) the categories created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @return [GetCategories]
  describe 'get_categories test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_category_info
  # Get a category details
  # @param id Category ID
  # @param [Hash] opts the optional parameters
  # @return [GetCategoryDetails]
  describe 'get_category_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_orders
  # Get order details
  # Get all the orders
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @option opts [String] :modified_since Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @option opts [String] :created_since Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @return [nil]
  describe 'get_orders test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_product_info
  # Get a product&#39;s details
  # @param id Product ID
  # @param [Hash] opts the optional parameters
  # @return [GetProductDetails]
  describe 'get_product_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_products
  # Return all your products
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [String] :sort Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed
  # @option opts [Array<String>] :ids Filter by product ids
  # @option opts [String] :name Filter by product name, minimum 3 characters should be present for search
  # @option opts [Float] :price_lte Price filter for products less than and equals to particular amount
  # @option opts [Float] :price_gte Price filter for products greater than and equals to particular amount
  # @option opts [Float] :price_lt Price filter for products less than particular amount
  # @option opts [Float] :price_gt Price filter for products greater than particular amount
  # @option opts [Float] :price_eq Price filter for products equals to particular amount
  # @option opts [Float] :price_ne Price filter for products not equals to particular amount
  # @option opts [Array<String>] :categories Filter by product categories
  # @option opts [String] :modified_since Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @option opts [String] :created_since Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  # @return [GetProducts]
  describe 'get_products test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
