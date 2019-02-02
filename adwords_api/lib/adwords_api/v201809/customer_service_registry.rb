# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-01-28 16:54:55.

require 'adwords_api/errors'

module AdwordsApi; module V201809; module CustomerService
  class CustomerServiceRegistry
    CUSTOMERSERVICE_METHODS = {:get_customers=>{:input=>[], :output=>{:name=>"get_customers_response", :fields=>[{:name=>:rval, :type=>"Customer", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_service_links=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_service_links_response", :fields=>[{:name=>:rval, :type=>"ServiceLink", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:customer, :type=>"Customer", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"Customer", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_service_links=>{:input=>[{:name=>:operations, :type=>"ServiceLinkOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_service_links_response", :fields=>[{:name=>:rval, :type=>"ServiceLink", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CUSTOMERSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException", :ns=>0}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :UrlError=>{:fields=>[{:name=>:reason, :type=>"UrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :"AuthenticationError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "CUSTOMER_NOT_ACTIVE", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED", "TWO_STEP_VERIFICATION_NOT_ENROLLED", "ADVANCED_PROTECTION_NOT_ENROLLED"]}, :"ClientTermsError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"DatabaseError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DistinctError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"IdError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotEmptyError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:ns=>0, :type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"Predicate.Operator"=>{:ns=>0, :type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QuotaCheckError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["REQUIRED"]}, :"SizeLimitError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:ns=>0, :type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}, :"UrlError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INVALID_TRACKING_URL_TEMPLATE", "INVALID_TAG_IN_TRACKING_URL_TEMPLATE", "MISSING_TRACKING_URL_TEMPLATE_TAG", "MISSING_PROTOCOL_IN_TRACKING_URL_TEMPLATE", "INVALID_PROTOCOL_IN_TRACKING_URL_TEMPLATE", "MALFORMED_TRACKING_URL_TEMPLATE", "MISSING_HOST_IN_TRACKING_URL_TEMPLATE", "INVALID_TLD_IN_TRACKING_URL_TEMPLATE", "REDUNDANT_NESTED_TRACKING_URL_TEMPLATE_TAG", "INVALID_FINAL_URL", "INVALID_TAG_IN_FINAL_URL", "REDUNDANT_NESTED_FINAL_URL_TAG", "MISSING_PROTOCOL_IN_FINAL_URL", "INVALID_PROTOCOL_IN_FINAL_URL", "MALFORMED_FINAL_URL", "MISSING_HOST_IN_FINAL_URL", "INVALID_TLD_IN_FINAL_URL", "INVALID_FINAL_MOBILE_URL", "INVALID_TAG_IN_FINAL_MOBILE_URL", "REDUNDANT_NESTED_FINAL_MOBILE_URL_TAG", "MISSING_PROTOCOL_IN_FINAL_MOBILE_URL", "INVALID_PROTOCOL_IN_FINAL_MOBILE_URL", "MALFORMED_FINAL_MOBILE_URL", "MISSING_HOST_IN_FINAL_MOBILE_URL", "INVALID_TLD_IN_FINAL_MOBILE_URL", "INVALID_FINAL_APP_URL", "INVALID_TAG_IN_FINAL_APP_URL", "REDUNDANT_NESTED_FINAL_APP_URL_TAG", "MULTIPLE_APP_URLS_FOR_OSTYPE", "INVALID_OSTYPE", "INVALID_PROTOCOL_FOR_APP_URL", "INVALID_PACKAGE_ID_FOR_APP_URL", "URL_CUSTOM_PARAMETERS_COUNT_EXCEEDS_LIMIT", "URL_CUSTOM_PARAMETER_REMOVAL_WITH_NON_NULL_VALUE", "CANNOT_REMOVE_URL_CUSTOM_PARAMETER_IN_ADD_OPERATION", "CANNOT_REMOVE_URL_CUSTOM_PARAMETER_DURING_FULL_REPLACEMENT", "FINAL_URL_SUFFIX_MALFORMED", "INVALID_TAG_IN_FINAL_URL_SUFFIX", "NULL_CUSTOM_PARAMETER_VALUE_DURING_ADD_OR_FULL_REPLACEMENT", "INVALID_CHARACTERS_IN_URL_CUSTOM_PARAMETER_KEY", "INVALID_CHARACTERS_IN_URL_CUSTOM_PARAMETER_VALUE", "INVALID_TAG_IN_URL_CUSTOM_PARAMETER_VALUE", "REDUNDANT_NESTED_URL_CUSTOM_PARAMETER_TAG", "MISSING_PROTOCOL", "INVALID_URL", "DESTINATION_URL_DEPRECATED", "INVALID_TAG_IN_URL", "MISSING_URL_TAG", "DUPLICATE_URL_ID", "INVALID_URL_ID", "URL_ERROR"]}, :ConversionTrackingSettings=>{:fields=>[{:name=>:effective_conversion_tracking_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:uses_cross_account_conversion_tracking, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Customer=>{:fields=>[{:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:descriptive_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_manage_clients, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:test_account, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:auto_tagging_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:final_url_suffix, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:parallel_tracking_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_tracking_settings, :type=>"ConversionTrackingSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:remarketing_settings, :type=>"RemarketingSettings", :min_occurs=>0, :max_occurs=>1}]}, :CustomerError=>{:fields=>[{:name=>:reason, :type=>"CustomerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RemarketingSettings=>{:fields=>[{:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:google_global_site_tag, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ServiceLink=>{:fields=>[{:name=>:service_type, :type=>"ServiceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_link_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:link_status, :type=>"ServiceLink.LinkStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ServiceLinkOperation=>{:fields=>[{:name=>:operand, :type=>"ServiceLink", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :"CustomerError.Reason"=>{:type=>"string", :enumerations=>["INVALID_SERVICE_LINK", "INVALID_STATUS", "ACCOUNT_NOT_SET_UP"]}, :"ServiceLink.LinkStatus"=>{:type=>"string", :enumerations=>["ACTIVE", "PENDING", "UNKNOWN"]}, :ServiceType=>{:type=>"string", :enumerations=>["MERCHANT_CENTER", "UNKNOWN"]}}
    CUSTOMERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201809"]

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
    attr_reader :message  # string
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
