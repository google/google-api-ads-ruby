# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2014-10-06 13:12:40.

require 'adwords_api/errors'

module AdwordsApi; module V201409; module CustomerService
  class CustomerServiceRegistry
    CUSTOMERSERVICE_METHODS = {:get=>{:input=>[], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"Customer", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:customer, :type=>"Customer", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"Customer", :min_occurs=>0, :max_occurs=>1}]}}}
    CUSTOMERSERVICE_TYPES = {:AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :UrlError=>{:fields=>[{:name=>:reason, :type=>"UrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException", :ns=>0}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :"AuthenticationError.Reason"=>{:fields=>[], :ns=>0}, :"AuthorizationError.Reason"=>{:fields=>[], :ns=>0}, :"ClientTermsError.Reason"=>{:fields=>[], :ns=>0}, :ConversionDeduplicationMode=>{:fields=>[], :ns=>0}, :"DatabaseError.Reason"=>{:fields=>[], :ns=>0}, :"DistinctError.Reason"=>{:fields=>[], :ns=>0}, :"IdError.Reason"=>{:fields=>[], :ns=>0}, :"InternalApiError.Reason"=>{:fields=>[], :ns=>0}, :"NotEmptyError.Reason"=>{:fields=>[], :ns=>0}, :"NullError.Reason"=>{:fields=>[], :ns=>0}, :"OperationAccessDenied.Reason"=>{:fields=>[], :ns=>0}, :"OperatorError.Reason"=>{:fields=>[], :ns=>0}, :"QuotaCheckError.Reason"=>{:fields=>[], :ns=>0}, :"RangeError.Reason"=>{:fields=>[], :ns=>0}, :"RateExceededError.Reason"=>{:fields=>[], :ns=>0}, :"ReadOnlyError.Reason"=>{:fields=>[], :ns=>0}, :"RejectedError.Reason"=>{:fields=>[], :ns=>0}, :"RequestError.Reason"=>{:fields=>[], :ns=>0}, :"RequiredError.Reason"=>{:fields=>[], :ns=>0}, :"SizeLimitError.Reason"=>{:fields=>[], :ns=>0}, :"StringLengthError.Reason"=>{:fields=>[], :ns=>0}, :"UrlError.Reason"=>{:fields=>[], :ns=>0}, :ConversionTrackingSettings=>{:fields=>[{:name=>:conversion_optimizer_mode, :type=>"ConversionDeduplicationMode", :min_occurs=>0, :max_occurs=>1}]}, :Customer=>{:fields=>[{:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:descriptive_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:company_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_manage_clients, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:test_account, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:auto_tagging_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_tracking_settings, :type=>"ConversionTrackingSettings", :min_occurs=>0, :max_occurs=>1}]}}
    CUSTOMERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201409"]

    def self.get_method_signature(method_name)
      return CUSTOMERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CUSTOMERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CUSTOMERSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, CustomerServiceRegistry)
    end
  end
end; end; end
