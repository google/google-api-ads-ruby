# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-01-28 16:55:09.

require 'adwords_api/errors'

module AdwordsApi; module V201809; module TrialService
  class TrialServiceRegistry
    TRIALSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"TrialPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"TrialOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"TrialReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"TrialPage", :min_occurs=>0, :max_occurs=>1}]}}}
    TRIALSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingErrors=>{:fields=>[{:name=>:reason, :type=>"BiddingErrors.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BudgetError=>{:fields=>[{:name=>:reason, :type=>"BudgetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignError=>{:fields=>[{:name=>:reason, :type=>"CampaignError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateRangeError=>{:fields=>[{:name=>:reason, :type=>"DateRangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Trial=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:base_campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:draft_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:traffic_split_percent, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:traffic_split_type, :type=>"CampaignTrialTrafficSplitType", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"TrialStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:trial_campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :TrialError=>{:fields=>[{:name=>:reason, :type=>"TrialError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TrialOperation=>{:fields=>[{:name=>:operand, :type=>"Trial", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :TrialPage=>{:fields=>[{:name=>:entries, :type=>"Trial", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :TrialReturnValue=>{:fields=>[{:name=>:value, :type=>"Trial", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "CUSTOMER_NOT_ACTIVE", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED", "TWO_STEP_VERIFICATION_NOT_ENROLLED", "ADVANCED_PROTECTION_NOT_ENROLLED"]}, :"BiddingErrors.Reason"=>{:type=>"string", :enumerations=>["BIDDING_STRATEGY_TRANSITION_NOT_ALLOWED", "BIDDING_STRATEGY_NOT_COMPATIBLE_WITH_ADGROUP_OVERRIDES", "BIDDING_STRATEGY_NOT_COMPATIBLE_WITH_ADGROUP_CRITERIA_OVERRIDES", "CAMPAIGN_BIDDING_STRATEGY_CANNOT_BE_OVERRIDDEN", "ADGROUP_BIDDING_STRATEGY_CANNOT_BE_OVERRIDDEN", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_CAMPAIGN", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_ADGROUP", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_ADGROUP_CRITERIA", "INVALID_ANONYMOUS_BIDDING_STRATEGY_TYPE", "BIDS_NOT_ALLLOWED", "DUPLICATE_BIDS", "INVALID_BIDDING_SCHEME", "INVALID_BIDDING_STRATEGY_TYPE", "MISSING_BIDDING_STRATEGY_TYPE", "NULL_BID", "INVALID_BID", "BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE", "CONVERSION_TRACKING_NOT_ENABLED", "NOT_ENOUGH_CONVERSIONS", "CANNOT_CREATE_CAMPAIGN_WITH_BIDDING_STRATEGY", "CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_AD_GROUP_LEVEL_POP_BIDDING_STRATEGY", "CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CAMPAIGN_LEVEL_POP_BIDDING_STRATEGY", "BIDDING_STRATEGY_NOT_SUPPORTED_WITH_AD_SCHEDULE", "PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER", "PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA", "BIDDING_STRATEGY_NOT_ALLOWED_FOR_SEARCH_ONLY_CAMPAIGNS", "BIDDING_STRATEGY_NOT_SUPPORTED_IN_DRAFTS_OR_EXPERIMENTS", "BIDDING_STRATEGY_TYPE_DOES_NOT_SUPPORT_PRODUCT_TYPE_ADGROUP_CRITERION", "BID_TOO_SMALL", "BID_TOO_BIG", "BID_TOO_MANY_FRACTIONAL_DIGITS", "ENHANCED_CPC_ENABLED_NOT_SUPPORTED_ON_PORTFOLIO_TARGET_SPEND_STRATEGY", "BIDDING_STRATEGY_TYPE_NOT_ALLOWED_FOR_UNIVERSAL_APP_BIDDING_STRATEGY_GOAL_TYPE", "UNKNOWN"]}, :"BudgetError.Reason"=>{:type=>"string", :enumerations=>["BUDGET_CANNOT_BE_EXPLICITLY_SHARED", "BUDGET_REMOVED", "BUDGET_ERROR", "BUDGET_IN_USE", "BUDGET_PERIOD_NOT_AVAILABLE", "CANNOT_EDIT_SHARED_BUDGET", "CANNOT_MODIFY_FIELD_OF_IMPLICITLY_SHARED_BUDGET", "CANNOT_UPDATE_BUDGET_TO_IMPLICITLY_SHARED", "CANNOT_UPDATE_BUDGET_TO_EXPLICITLY_SHARED_WITHOUT_NAME", "CANNOT_UPDATE_BUDGET_TO_EXPLICITLY_SHARED", "CANNOT_USE_IMPLICITLY_SHARED_BUDGET_WITH_MULTIPLE_CAMPAIGNS", "DUPLICATE_NAME", "MONEY_AMOUNT_IN_WRONG_CURRENCY", "MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC", "MONEY_AMOUNT_TOO_LARGE", "NEGATIVE_MONEY_AMOUNT", "NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT"]}, :"CampaignError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_GO_BACK_TO_INCOMPLETE", "CANNOT_TARGET_CONTENT_NETWORK", "CANNOT_TARGET_SEARCH_NETWORK", "CANNOT_TARGET_SEARCH_NETWORK_WITHOUT_GOOGLE_SEARCH", "CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN", "CAMPAIGN_MUST_TARGET_AT_LEAST_ONE_NETWORK", "CANNOT_TARGET_PARTNER_SEARCH_NETWORK", "CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CRITERIA_LEVEL_BIDDING_STRATEGY", "CAMPAIGN_DURATION_MUST_CONTAIN_ALL_RUNNABLE_TRIALS", "CANNOT_MODIFY_FOR_TRIAL_CAMPAIGN", "DUPLICATE_CAMPAIGN_NAME", "INCOMPATIBLE_CAMPAIGN_FIELD", "INVALID_CAMPAIGN_NAME", "INVALID_AD_SERVING_OPTIMIZATION_STATUS", "INVALID_TRACKING_URL", "CANNOT_SET_BOTH_TRACKING_URL_TEMPLATE_AND_TRACKING_SETTING", "MAX_IMPRESSIONS_NOT_IN_RANGE", "TIME_UNIT_NOT_SUPPORTED", "INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED", "BUDGET_CANNOT_BE_SHARED", "CAMPAIGN_CANNOT_USE_SHARED_BUDGET", "CANNOT_CHANGE_BUDGET_ON_CAMPAIGN_WITH_TRIALS", "CAMPAIGN_LABEL_DOES_NOT_EXIST", "CAMPAIGN_LABEL_ALREADY_EXISTS", "MISSING_SHOPPING_SETTING", "INVALID_SHOPPING_SALES_COUNTRY", "MISSING_UNIVERSAL_APP_CAMPAIGN_SETTING", "ADVERTISING_CHANNEL_TYPE_NOT_AVAILABLE_FOR_ACCOUNT_TYPE", "INVALID_ADVERTISING_CHANNEL_SUB_TYPE", "CAMPAIGN_CANNOT_USE_SHARED_BUDGET_WHILE_PART_OF_CAMPAIGN_GROUP", "AT_LEAST_ONE_CONVERSION_MUST_BE_SELECTED", "CANNOT_SET_AD_ROTATION_MODE", "UNKNOWN"]}, :CampaignTrialTrafficSplitType=>{:type=>"string", :enumerations=>["UNKNOWN", "RANDOM_QUERY", "COOKIE"]}, :"ClientTermsError.Reason"=>{:type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"DatabaseError.Reason"=>{:type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DateError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_VALUES_IN_DATE", "INVALID_FIELD_VALUES_IN_DATE_TIME", "INVALID_STRING_DATE", "INVALID_STRING_DATE_RANGE", "INVALID_STRING_DATE_TIME", "EARLIER_THAN_MINIMUM_DATE", "LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL"]}, :"DateRangeError.Reason"=>{:type=>"string", :enumerations=>["DATE_RANGE_ERROR", "INVALID_DATE", "START_DATE_AFTER_END_DATE", "CANNOT_SET_DATE_TO_PAST", "AFTER_MAXIMUM_ALLOWABLE_DATE", "CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED"]}, :"DistinctError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"EntityCountLimitExceeded.Reason"=>{:type=>"string", :enumerations=>["ACCOUNT_LIMIT", "CAMPAIGN_LIMIT", "ADGROUP_LIMIT", "AD_GROUP_AD_LIMIT", "AD_GROUP_CRITERION_LIMIT", "SHARED_SET_LIMIT", "MATCHING_FUNCTION_LIMIT", "UNKNOWN"]}, :"EntityNotFound.Reason"=>{:type=>"string", :enumerations=>["INVALID_ID"]}, :"IdError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotEmptyError.Reason"=>{:type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"Predicate.Operator"=>{:type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QuotaCheckError.Reason"=>{:type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"SelectorError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_NAME", "MISSING_FIELDS", "MISSING_PREDICATES", "OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES", "INVALID_PREDICATE_ENUM_VALUE", "MISSING_PREDICATE_OPERATOR", "MISSING_PREDICATE_VALUES", "INVALID_PREDICATE_FIELD_NAME", "INVALID_PREDICATE_OPERATOR", "INVALID_FIELD_SELECTION", "INVALID_PREDICATE_VALUE", "INVALID_SORT_FIELD_NAME", "SELECTOR_ERROR", "FILTER_BY_DATE_RANGE_NOT_SUPPORTED", "START_INDEX_IS_TOO_HIGH", "TOO_MANY_PREDICATE_VALUES", "UNKNOWN_ERROR"]}, :"SizeLimitError.Reason"=>{:type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}, :"TrialError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "INVALID_STATUS_TRANSITION", "CANNOT_USE_TRIAL_WITH_SHARED_BUDGET", "CANNOT_CREATE_TRIAL_WHEN_CAMPAIGN_HAS_ACTIVE_EXPERIMENTS", "CANNOT_CREATE_TRIAL_FOR_DELETED_BASE_CAMPAIGN", "CANNOT_CREATE_TRIAL_FOR_NON_PROPOSED_DRAFT", "CUSTOMER_CANNOT_CREATE_TRIAL", "CAMPAIGN_CANNOT_CREATE_TRIAL", "NAME_ALREADY_IN_USE", "TRIAL_DURATIONS_MUST_NOT_OVERLAP", "TRIAL_DURATION_MUST_BE_WITHIN_CAMPAIGN_DURATION"]}, :TrialStatus=>{:type=>"string", :enumerations=>["UNKNOWN", "CREATING", "ACTIVE", "PROMOTING", "PROMOTED", "ARCHIVED", "CREATION_FAILED", "PROMOTE_FAILED", "GRADUATED", "HALTED"]}}
    TRIALSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return TRIALSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return TRIALSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return TRIALSERVICE_NAMESPACES[index]
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
      super(exception_fault, TrialServiceRegistry)
    end
  end
end; end; end
