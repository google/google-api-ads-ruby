# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:04:01.

require 'adwords_api/errors'

module AdwordsApi; module V201710; module AdCustomizerFeedService
  class AdCustomizerFeedServiceRegistry
    ADCUSTOMIZERFEEDSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdCustomizerFeedPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdCustomizerFeedOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdCustomizerFeedReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    ADCUSTOMIZERFEEDSERVICE_TYPES = {:AdCustomizerFeed=>{:fields=>[{:name=>:feed_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_status, :type=>"Feed.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:feed_attributes, :type=>"AdCustomizerFeedAttribute", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdCustomizerFeedAttribute=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"AdCustomizerFeedAttribute.Type", :min_occurs=>0, :max_occurs=>1}]}, :AdCustomizerFeedError=>{:fields=>[{:name=>:reason, :type=>"AdCustomizerFeedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdCustomizerFeedOperation=>{:fields=>[{:name=>:operand, :type=>"AdCustomizerFeed", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :AdCustomizerFeedPage=>{:fields=>[{:name=>:entries, :type=>"AdCustomizerFeed", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdCustomizerFeedReturnValue=>{:fields=>[{:name=>:value, :type=>"AdCustomizerFeed", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateRange=>{:fields=>[{:name=>:min, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"Date", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeedError=>{:fields=>[{:name=>:reason, :type=>"FeedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :"AdCustomizerFeedAttribute.Type"=>{:type=>"string", :enumerations=>["INTEGER", "PRICE", "DATE_TIME", "STRING", "UNKNOWN"]}, :"AdCustomizerFeedError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_ADD_KEY_ATTRIBUTE", "NOT_AD_CUSTOMIZER_FEED", "INVALID_FEED_NAME", "TOO_MANY_FEED_ATTRIBUTES_FOR_FEED", "ATTRIBUTE_NAMES_NOT_UNIQUE", "FEED_DELETED", "DUPLICATE_FEED_NAME", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED"]}, :"ClientTermsError.Reason"=>{:type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"DatabaseError.Reason"=>{:type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DistinctError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"EntityCountLimitExceeded.Reason"=>{:type=>"string", :enumerations=>["ACCOUNT_LIMIT", "CAMPAIGN_LIMIT", "ADGROUP_LIMIT", "AD_GROUP_AD_LIMIT", "AD_GROUP_CRITERION_LIMIT", "SHARED_SET_LIMIT", "MATCHING_FUNCTION_LIMIT", "UNKNOWN"]}, :"EntityNotFound.Reason"=>{:type=>"string", :enumerations=>["INVALID_ID"]}, :"Feed.Status"=>{:type=>"string", :enumerations=>["ENABLED", "REMOVED", "UNKNOWN"]}, :"FeedError.Reason"=>{:type=>"string", :enumerations=>["ATTRIBUTE_NAMES_NOT_UNIQUE", "ATTRIBUTES_DO_NOT_MATCH_EXISTING_ATTRIBUTES", "CANNOT_CHANGE_ORIGIN", "CANNOT_SPECIFY_USER_ORIGIN_FOR_SYSTEM_FEED", "CANNOT_SPECIFY_ADWORDS_ORIGIN_FOR_NON_SYSTEM_FEED", "CANNOT_SPECIFY_FEED_ATTRIBUTES_FOR_SYSTEM_FEED", "CANNOT_UPDATE_FEED_ATTRIBUTES_WITH_ORIGIN_ADWORDS", "FEED_REMOVED", "INVALID_ORIGIN_VALUE", "FEED_ORIGIN_IS_NOT_USER", "DUPLICATE_FEED_NAME", "INVALID_FEED_NAME", "MISSING_OAUTH_INFO", "NEW_ATTRIBUTE_CANNOT_BE_PART_OF_UNIQUE_KEY", "TOO_MANY_FEED_ATTRIBUTES_FOR_FEED", "INVALID_BUSINESS_ACCOUNT", "BUSINESS_ACCOUNT_CANNOT_ACCESS_LOCATION_ACCOUNT", "INVALID_AFFILIATE_CHAIN_ID", "CANNOT_CHANGE_SYSTEM_FEED_GENERATION_DATA_TYPE", "UNSUPPORTED_AFFILIATE_LOCATION_RELATIONSHIP_TYPE", "UNKNOWN"]}, :"IdError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NewEntityCreationError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_SET_ID_FOR_ADD", "DUPLICATE_TEMP_IDS", "TEMP_ID_ENTITY_HAD_ERRORS"]}, :"NotEmptyError.Reason"=>{:type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"Predicate.Operator"=>{:type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QuotaCheckError.Reason"=>{:type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"SelectorError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_NAME", "MISSING_FIELDS", "MISSING_PREDICATES", "OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES", "INVALID_PREDICATE_ENUM_VALUE", "MISSING_PREDICATE_OPERATOR", "MISSING_PREDICATE_VALUES", "INVALID_PREDICATE_FIELD_NAME", "INVALID_PREDICATE_OPERATOR", "INVALID_FIELD_SELECTION", "INVALID_PREDICATE_VALUE", "INVALID_SORT_FIELD_NAME", "SELECTOR_ERROR", "FILTER_BY_DATE_RANGE_NOT_SUPPORTED", "START_INDEX_IS_TOO_HIGH", "TOO_MANY_PREDICATE_VALUES", "UNKNOWN_ERROR"]}, :"SizeLimitError.Reason"=>{:type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}}
    ADCUSTOMIZERFEEDSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADCUSTOMIZERFEEDSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADCUSTOMIZERFEEDSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADCUSTOMIZERFEEDSERVICE_NAMESPACES[index]
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
      super(exception_fault, AdCustomizerFeedServiceRegistry)
    end
  end
end; end; end
