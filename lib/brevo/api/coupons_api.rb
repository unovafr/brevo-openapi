=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@brevo.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Brevo
  class CouponsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create а coupon collection
    # @param create_coupon_collection_request [CreateCouponCollectionRequest] Values to create a coupon collection
    # @param [Hash] opts the optional parameters
    # @return [CreateCouponCollection201Response]
    def create_coupon_collection(create_coupon_collection_request, opts = {})
      data, _status_code, _headers = create_coupon_collection_with_http_info(create_coupon_collection_request, opts)
      data
    end

    # Create а coupon collection
    # @param create_coupon_collection_request [CreateCouponCollectionRequest] Values to create a coupon collection
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCouponCollection201Response, Integer, Hash)>] CreateCouponCollection201Response data, response status code and response headers
    def create_coupon_collection_with_http_info(create_coupon_collection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponsApi.create_coupon_collection ...'
      end
      # verify the required parameter 'create_coupon_collection_request' is set
      if @api_client.config.client_side_validation && create_coupon_collection_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_coupon_collection_request' when calling CouponsApi.create_coupon_collection"
      end
      # resource path
      local_var_path = '/couponCollections'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_coupon_collection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateCouponCollection201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"CouponsApi.create_coupon_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponsApi#create_coupon_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create coupons for a coupon collection
    # @param create_coupons_request [CreateCouponsRequest] Values to create coupons
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_coupons(create_coupons_request, opts = {})
      create_coupons_with_http_info(create_coupons_request, opts)
      nil
    end

    # Create coupons for a coupon collection
    # @param create_coupons_request [CreateCouponsRequest] Values to create coupons
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_coupons_with_http_info(create_coupons_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponsApi.create_coupons ...'
      end
      # verify the required parameter 'create_coupons_request' is set
      if @api_client.config.client_side_validation && create_coupons_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_coupons_request' when calling CouponsApi.create_coupons"
      end
      # resource path
      local_var_path = '/coupons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_coupons_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"CouponsApi.create_coupons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponsApi#create_coupons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a coupon collection by id
    # @param id [String] Id of the collection to return
    # @param [Hash] opts the optional parameters
    # @return [GetCouponCollection]
    def get_coupon_collection(id, opts = {})
      data, _status_code, _headers = get_coupon_collection_with_http_info(id, opts)
      data
    end

    # Get a coupon collection by id
    # @param id [String] Id of the collection to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCouponCollection, Integer, Hash)>] GetCouponCollection data, response status code and response headers
    def get_coupon_collection_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponsApi.get_coupon_collection ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CouponsApi.get_coupon_collection"
      end
      # resource path
      local_var_path = '/couponCollections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCouponCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"CouponsApi.get_coupon_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponsApi#get_coupon_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all your coupon collections
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents returned per page (default to 50)
    # @option opts [Integer] :offset Index of the first document on the page (default to 0)
    # @option opts [String] :sort Sort the results by creation time in ascending/descending order (default to 'desc')
    # @option opts [String] :sort_by The field used to sort coupon collections (default to 'createdAt')
    # @return [GetCouponCollection]
    def get_coupon_collections(opts = {})
      data, _status_code, _headers = get_coupon_collections_with_http_info(opts)
      data
    end

    # Get all your coupon collections
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents returned per page (default to 50)
    # @option opts [Integer] :offset Index of the first document on the page (default to 0)
    # @option opts [String] :sort Sort the results by creation time in ascending/descending order (default to 'desc')
    # @option opts [String] :sort_by The field used to sort coupon collections (default to 'createdAt')
    # @return [Array<(GetCouponCollection, Integer, Hash)>] GetCouponCollection data, response status code and response headers
    def get_coupon_collections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponsApi.get_coupon_collections ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CouponsApi.get_coupon_collections, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CouponsApi.get_coupon_collections, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CouponsApi.get_coupon_collections, must be greater than or equal to 0.'
      end

      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      allowable_values = ["createdAt", "remainingCoupons", "expirationDate"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !allowable_values.include?(opts[:'sort_by'])
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/couponCollections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCouponCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"CouponsApi.get_coupon_collections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponsApi#get_coupon_collections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a coupon collection by id
    # @param id [String] Id of the collection to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCouponCollectionRequest] :update_coupon_collection_request Values to update the coupon collection
    # @return [UpdateCouponCollection200Response]
    def update_coupon_collection(id, opts = {})
      data, _status_code, _headers = update_coupon_collection_with_http_info(id, opts)
      data
    end

    # Update a coupon collection by id
    # @param id [String] Id of the collection to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCouponCollectionRequest] :update_coupon_collection_request Values to update the coupon collection
    # @return [Array<(UpdateCouponCollection200Response, Integer, Hash)>] UpdateCouponCollection200Response data, response status code and response headers
    def update_coupon_collection_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CouponsApi.update_coupon_collection ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CouponsApi.update_coupon_collection"
      end
      # resource path
      local_var_path = '/couponCollections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_coupon_collection_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateCouponCollection200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"CouponsApi.update_coupon_collection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponsApi#update_coupon_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
