# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-01-28 16:54:05.

require 'adwords_api/errors'

module AdwordsApi; module V201806; module CampaignBidModifierService
  class CampaignBidModifierServiceRegistry
    CAMPAIGNBIDMODIFIERSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignBidModifierPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignBidModifierOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignBidModifierReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"CampaignBidModifierPage", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNBIDMODIFIERSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignBidModifier=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion, :type=>"Criterion", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertising_channel_type, :type=>"AdvertisingChannelType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_modifier, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :CampaignBidModifierError=>{:fields=>[{:name=>:reason, :type=>"CampaignBidModifierError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignBidModifierOperation=>{:fields=>[{:name=>:operand, :type=>"CampaignBidModifier", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignBidModifierPage=>{:fields=>[{:name=>:entries, :type=>"CampaignBidModifier", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignBidModifierReturnValue=>{:fields=>[{:name=>:value, :type=>"CampaignBidModifier", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Criterion=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Criterion.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_type, :original_name=>"Criterion.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CriterionError=>{:fields=>[{:name=>:reason, :type=>"CriterionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityAccessDenied=>{:fields=>[{:name=>:reason, :type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InteractionType=>{:fields=>[], :base=>"Criterion"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdvertisingChannelType=>{:type=>"string", :enumerations=>["UNKNOWN", "SEARCH", "DISPLAY", "SHOPPING", "MULTI_CHANNEL"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "CUSTOMER_NOT_ACTIVE", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED", "TWO_STEP_VERIFICATION_NOT_ENROLLED", "ADVANCED_PROTECTION_NOT_ENROLLED"]}, :"CampaignBidModifierError.Reason"=>{:type=>"string", :enumerations=>["CAMPAIGN_BID_MODIFIER_ERROR"]}, :"ClientTermsError.Reason"=>{:type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"Criterion.Type"=>{:type=>"string", :enumerations=>["CONTENT_LABEL", "KEYWORD", "PLACEMENT", "VERTICAL", "USER_LIST", "USER_INTEREST", "MOBILE_APPLICATION", "MOBILE_APP_CATEGORY", "PRODUCT_PARTITION", "IP_BLOCK", "WEBPAGE", "LANGUAGE", "LOCATION", "AGE_RANGE", "CARRIER", "OPERATING_SYSTEM_VERSION", "MOBILE_DEVICE", "GENDER", "PARENT", "PROXIMITY", "PLATFORM", "PREFERRED_CONTENT", "AD_SCHEDULE", "LOCATION_GROUPS", "PRODUCT_SCOPE", "CUSTOM_AFFINITY", "CUSTOM_INTENT", "YOUTUBE_VIDEO", "YOUTUBE_CHANNEL", "APP_PAYMENT_MODEL", "INCOME_RANGE", "INTERACTION_TYPE", "UNKNOWN"]}, :"CriterionError.Reason"=>{:type=>"string", :enumerations=>["CONCRETE_TYPE_REQUIRED", "INVALID_EXCLUDED_CATEGORY", "INVALID_KEYWORD_TEXT", "KEYWORD_TEXT_TOO_LONG", "KEYWORD_HAS_TOO_MANY_WORDS", "KEYWORD_HAS_INVALID_CHARS", "INVALID_PLACEMENT_URL", "INVALID_USER_LIST", "INVALID_USER_INTEREST", "INVALID_FORMAT_FOR_PLACEMENT_URL", "PLACEMENT_URL_IS_TOO_LONG", "PLACEMENT_URL_HAS_ILLEGAL_CHAR", "PLACEMENT_URL_HAS_MULTIPLE_SITES_IN_LINE", "PLACEMENT_IS_NOT_AVAILABLE_FOR_TARGETING_OR_EXCLUSION", "INVALID_VERTICAL_PATH", "INVALID_YOUTUBE_CHANNEL_ID", "INVALID_YOUTUBE_VIDEO_ID", "YOUTUBE_VERTICAL_CHANNEL_DEPRECATED", "YOUTUBE_DEMOGRAPHIC_CHANNEL_DEPRECATED", "YOUTUBE_URL_UNSUPPORTED", "CANNOT_EXCLUDE_CRITERIA_TYPE", "CANNOT_ADD_CRITERIA_TYPE", "INVALID_PRODUCT_FILTER", "PRODUCT_FILTER_TOO_LONG", "CANNOT_EXCLUDE_SIMILAR_USER_LIST", "CANNOT_ADD_CLOSED_USER_LIST", "CANNOT_ADD_DISPLAY_ONLY_LISTS_TO_SEARCH_ONLY_CAMPAIGNS", "CANNOT_ADD_DISPLAY_ONLY_LISTS_TO_SEARCH_CAMPAIGNS", "CANNOT_ADD_DISPLAY_ONLY_LISTS_TO_SHOPPING_CAMPAIGNS", "CANNOT_ADD_USER_INTERESTS_TO_SEARCH_CAMPAIGNS", "CANNOT_SET_BIDS_ON_CRITERION_TYPE_IN_SEARCH_CAMPAIGNS", "CANNOT_ADD_URLS_TO_CRITERION_TYPE_FOR_CAMPAIGN_TYPE", "INVALID_IP_ADDRESS", "INVALID_IP_FORMAT", "INVALID_MOBILE_APP", "INVALID_MOBILE_APP_CATEGORY", "INVALID_CRITERION_ID", "CANNOT_TARGET_CRITERION", "CANNOT_TARGET_OBSOLETE_CRITERION", "CRITERION_ID_AND_TYPE_MISMATCH", "INVALID_PROXIMITY_RADIUS", "INVALID_PROXIMITY_RADIUS_UNITS", "INVALID_STREETADDRESS_LENGTH", "INVALID_CITYNAME_LENGTH", "INVALID_REGIONCODE_LENGTH", "INVALID_REGIONNAME_LENGTH", "INVALID_POSTALCODE_LENGTH", "INVALID_COUNTRY_CODE", "INVALID_LATITUDE", "INVALID_LONGITUDE", "PROXIMITY_GEOPOINT_AND_ADDRESS_BOTH_CANNOT_BE_NULL", "INVALID_PROXIMITY_ADDRESS", "INVALID_USER_DOMAIN_NAME", "INVALID_WEBPAGE_CONDITION", "INVALID_WEBPAGE_CONDITION_URL", "WEBPAGE_CONDITION_URL_CANNOT_BE_EMPTY", "WEBPAGE_CONDITION_URL_UNSUPPORTED_PROTOCOL", "WEBPAGE_CONDITION_URL_CANNOT_BE_IP_ADDRESS", "WEBPAGE_CONDITION_URL_DOMAIN_NOT_CONSISTENT_WITH_CAMPAIGN_SETTING", "WEBPAGE_CONDITION_URL_CANNOT_BE_PUBLIC_SUFFIX", "WEBPAGE_CONDITION_URL_INVALID_PUBLIC_SUFFIX", "WEBPAGE_CONDITION_URL_VALUE_TRACK_VALUE_NOT_SUPPORTED", "WEBPAGE_CRITERION_URL_EQUALS_CAN_HAVE_ONLY_ONE_CONDITION", "WEBPAGE_CRITERION_CANNOT_ADD_NON_SMART_TARGETING_TO_NON_DSA_AD_GROUP", "CRITERION_PARAMETER_TOO_LONG", "AD_SCHEDULE_TIME_INTERVALS_OVERLAP", "AD_SCHEDULE_INTERVAL_CANNOT_SPAN_MULTIPLE_DAYS", "AD_SCHEDULE_INVALID_TIME_INTERVAL", "AD_SCHEDULE_EXCEEDED_INTERVALS_PER_DAY_LIMIT", "AD_SCHEDULE_CRITERION_ID_MISMATCHING_FIELDS", "CANNOT_BID_MODIFY_CRITERION_TYPE", "CANNOT_BID_MODIFY_CRITERION_CAMPAIGN_OPTED_OUT", "CANNOT_BID_MODIFY_NEGATIVE_CRITERION", "BID_MODIFIER_ALREADY_EXISTS", "FEED_ID_NOT_ALLOWED", "ACCOUNT_INELIGIBLE_FOR_CRITERIA_TYPE", "CRITERIA_TYPE_INVALID_FOR_BIDDING_STRATEGY", "CANNOT_EXCLUDE_CRITERION", "CANNOT_REMOVE_CRITERION", "PRODUCT_SCOPE_TOO_LONG", "PRODUCT_SCOPE_TOO_MANY_DIMENSIONS", "PRODUCT_PARTITION_TOO_LONG", "PRODUCT_PARTITION_TOO_MANY_DIMENSIONS", "INVALID_PRODUCT_DIMENSION", "INVALID_PRODUCT_DIMENSION_TYPE", "INVALID_PRODUCT_BIDDING_CATEGORY", "MISSING_SHOPPING_SETTING", "INVALID_MATCHING_FUNCTION", "LOCATION_FILTER_NOT_ALLOWED", "LOCATION_FILTER_INVALID", "CANNOT_ATTACH_CRITERIA_AT_CAMPAIGN_AND_ADGROUP", "UNKNOWN"]}, :"DatabaseError.Reason"=>{:type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DateError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_VALUES_IN_DATE", "INVALID_FIELD_VALUES_IN_DATE_TIME", "INVALID_STRING_DATE", "INVALID_STRING_DATE_RANGE", "INVALID_STRING_DATE_TIME", "EARLIER_THAN_MINIMUM_DATE", "LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL"]}, :"DistinctError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"EntityAccessDenied.Reason"=>{:type=>"string", :enumerations=>["READ_ACCESS_DENIED", "WRITE_ACCESS_DENIED"]}, :"EntityNotFound.Reason"=>{:type=>"string", :enumerations=>["INVALID_ID"]}, :"IdError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NewEntityCreationError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_SET_ID_FOR_ADD", "DUPLICATE_TEMP_IDS", "TEMP_ID_ENTITY_HAD_ERRORS"]}, :"NotEmptyError.Reason"=>{:type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"Predicate.Operator"=>{:type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QueryError.Reason"=>{:type=>"string", :enumerations=>["PARSING_FAILED", "MISSING_QUERY", "MISSING_SELECT_CLAUSE", "MISSING_FROM_CLAUSE", "INVALID_SELECT_CLAUSE", "INVALID_FROM_CLAUSE", "INVALID_WHERE_CLAUSE", "INVALID_ORDER_BY_CLAUSE", "INVALID_LIMIT_CLAUSE", "INVALID_START_INDEX_IN_LIMIT_CLAUSE", "INVALID_PAGE_SIZE_IN_LIMIT_CLAUSE", "INVALID_DURING_CLAUSE", "INVALID_MIN_DATE_IN_DURING_CLAUSE", "INVALID_MAX_DATE_IN_DURING_CLAUSE", "MAX_LESS_THAN_MIN_IN_DURING_CLAUSE", "VALIDATION_FAILED"]}, :"QuotaCheckError.Reason"=>{:type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"SelectorError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_NAME", "MISSING_FIELDS", "MISSING_PREDICATES", "OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES", "INVALID_PREDICATE_ENUM_VALUE", "MISSING_PREDICATE_OPERATOR", "MISSING_PREDICATE_VALUES", "INVALID_PREDICATE_FIELD_NAME", "INVALID_PREDICATE_OPERATOR", "INVALID_FIELD_SELECTION", "INVALID_PREDICATE_VALUE", "INVALID_SORT_FIELD_NAME", "SELECTOR_ERROR", "FILTER_BY_DATE_RANGE_NOT_SUPPORTED", "START_INDEX_IS_TOO_HIGH", "TOO_MANY_PREDICATE_VALUES", "UNKNOWN_ERROR"]}, :"SizeLimitError.Reason"=>{:type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}}
    CAMPAIGNBIDMODIFIERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNBIDMODIFIERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNBIDMODIFIERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNBIDMODIFIERSERVICE_NAMESPACES[index]
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
      super(exception_fault, CampaignBidModifierServiceRegistry)
    end
  end
end; end; end
