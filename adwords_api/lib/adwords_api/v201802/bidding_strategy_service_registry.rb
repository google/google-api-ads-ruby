# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:05:11.

require 'adwords_api/errors'

module AdwordsApi; module V201802; module BiddingStrategyService
  class BiddingStrategyServiceRegistry
    BIDDINGSTRATEGYSERVICE_METHODS = {:get=>{:input=>[{:name=>:selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"BiddingStrategyPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"BiddingStrategyOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"BiddingStrategyReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"BiddingStrategyPage", :min_occurs=>0, :max_occurs=>1}]}}}
    BIDDINGSTRATEGYSERVICE_TYPES = {:AdxError=>{:fields=>[{:name=>:reason, :type=>"AdxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingErrors=>{:fields=>[{:name=>:reason, :type=>"BiddingErrors.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingScheme=>{:fields=>[{:name=>:bidding_scheme_type, :original_name=>"BiddingScheme.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :SharedBiddingStrategy=>{:fields=>[{:name=>:bidding_scheme, :type=>"BiddingScheme", :min_occurs=>0, :max_occurs=>1}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"SharedBiddingStrategy.BiddingStrategyStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}]}, :BiddingStrategyError=>{:fields=>[{:name=>:reason, :type=>"BiddingStrategyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingStrategyOperation=>{:fields=>[{:name=>:operand, :type=>"SharedBiddingStrategy", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :BiddingStrategyPage=>{:fields=>[{:name=>:entries, :type=>"SharedBiddingStrategy", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :BiddingStrategyReturnValue=>{:fields=>[{:name=>:value, :type=>"SharedBiddingStrategy", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :original_name=>"ComparableValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EnhancedCpcBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :ManualCpcBiddingScheme=>{:fields=>[{:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :ManualCpmBiddingScheme=>{:fields=>[{:name=>:viewable_cpm_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :MaximizeConversionValueBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :MaximizeConversionsBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :PageOnePromotedBiddingScheme=>{:fields=>[{:name=>:strategy_goal, :type=>"PageOnePromotedBiddingScheme.StrategyGoal", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_modifier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_budget_constrained, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TargetCpaBiddingScheme=>{:fields=>[{:name=>:target_cpa, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetOutrankShareBiddingScheme=>{:fields=>[{:name=>:target_outrank_share, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:competitor_domain, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetRoasBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetSpendBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:spend_target, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :"AdxError.Reason"=>{:type=>"string", :enumerations=>["UNSUPPORTED_FEATURE"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "CUSTOMER_NOT_ACTIVE", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED"]}, :"BiddingErrors.Reason"=>{:type=>"string", :enumerations=>["BIDDING_STRATEGY_TRANSITION_NOT_ALLOWED", "BIDDING_STRATEGY_NOT_COMPATIBLE_WITH_ADGROUP_OVERRIDES", "BIDDING_STRATEGY_NOT_COMPATIBLE_WITH_ADGROUP_CRITERIA_OVERRIDES", "CAMPAIGN_BIDDING_STRATEGY_CANNOT_BE_OVERRIDDEN", "ADGROUP_BIDDING_STRATEGY_CANNOT_BE_OVERRIDDEN", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_CAMPAIGN", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_ADGROUP", "CANNOT_ATTACH_BIDDING_STRATEGY_TO_ADGROUP_CRITERIA", "INVALID_ANONYMOUS_BIDDING_STRATEGY_TYPE", "BIDS_NOT_ALLLOWED", "DUPLICATE_BIDS", "INVALID_BIDDING_SCHEME", "INVALID_BIDDING_STRATEGY_TYPE", "MISSING_BIDDING_STRATEGY_TYPE", "NULL_BID", "INVALID_BID", "BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE", "CONVERSION_TRACKING_NOT_ENABLED", "NOT_ENOUGH_CONVERSIONS", "CANNOT_CREATE_CAMPAIGN_WITH_BIDDING_STRATEGY", "CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_AD_GROUP_LEVEL_POP_BIDDING_STRATEGY", "CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CAMPAIGN_LEVEL_POP_BIDDING_STRATEGY", "BIDDING_STRATEGY_NOT_SUPPORTED_WITH_AD_SCHEDULE", "PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER", "PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA", "BIDDING_STRATEGY_NOT_ALLOWED_FOR_SEARCH_ONLY_CAMPAIGNS", "BIDDING_STRATEGY_NOT_SUPPORTED_IN_DRAFTS_OR_EXPERIMENTS", "BIDDING_STRATEGY_TYPE_DOES_NOT_SUPPORT_PRODUCT_TYPE_ADGROUP_CRITERION", "BID_TOO_SMALL", "BID_TOO_BIG", "BID_TOO_MANY_FRACTIONAL_DIGITS", "ENHANCED_CPC_ENABLED_NOT_SUPPORTED_ON_PORTFOLIO_TARGET_SPEND_STRATEGY", "UNKNOWN"]}, :"SharedBiddingStrategy.BiddingStrategyStatus"=>{:type=>"string", :enumerations=>["ENABLED", "REMOVED", "UNKNOWN"]}, :"BiddingStrategyError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_NAME", "CANNOT_CHANGE_BIDDING_STRATEGY_TYPE", "CANNOT_REMOVE_ASSOCIATED_STRATEGY", "BIDDING_STRATEGY_NOT_SUPPORTED", "UNKNOWN"]}, :BiddingStrategyType=>{:type=>"string", :enumerations=>["MANUAL_CPC", "MANUAL_CPM", "PAGE_ONE_PROMOTED", "TARGET_SPEND", "ENHANCED_CPC", "TARGET_CPA", "TARGET_ROAS", "MAXIMIZE_CONVERSIONS", "MAXIMIZE_CONVERSION_VALUE", "TARGET_OUTRANK_SHARE", "NONE", "UNKNOWN"]}, :"ClientTermsError.Reason"=>{:type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"DatabaseError.Reason"=>{:type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DateError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_VALUES_IN_DATE", "INVALID_FIELD_VALUES_IN_DATE_TIME", "INVALID_STRING_DATE", "INVALID_STRING_DATE_RANGE", "INVALID_STRING_DATE_TIME", "EARLIER_THAN_MINIMUM_DATE", "LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL"]}, :"DistinctError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"EntityCountLimitExceeded.Reason"=>{:type=>"string", :enumerations=>["ACCOUNT_LIMIT", "CAMPAIGN_LIMIT", "ADGROUP_LIMIT", "AD_GROUP_AD_LIMIT", "AD_GROUP_CRITERION_LIMIT", "SHARED_SET_LIMIT", "MATCHING_FUNCTION_LIMIT", "UNKNOWN"]}, :"EntityNotFound.Reason"=>{:type=>"string", :enumerations=>["INVALID_ID"]}, :"IdError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NewEntityCreationError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_SET_ID_FOR_ADD", "DUPLICATE_TEMP_IDS", "TEMP_ID_ENTITY_HAD_ERRORS"]}, :"NotEmptyError.Reason"=>{:type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"PageOnePromotedBiddingScheme.StrategyGoal"=>{:type=>"string", :enumerations=>["PAGE_ONE", "PAGE_ONE_PROMOTED"]}, :"Predicate.Operator"=>{:type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QueryError.Reason"=>{:type=>"string", :enumerations=>["PARSING_FAILED", "MISSING_QUERY", "MISSING_SELECT_CLAUSE", "MISSING_FROM_CLAUSE", "INVALID_SELECT_CLAUSE", "INVALID_FROM_CLAUSE", "INVALID_WHERE_CLAUSE", "INVALID_ORDER_BY_CLAUSE", "INVALID_LIMIT_CLAUSE", "INVALID_START_INDEX_IN_LIMIT_CLAUSE", "INVALID_PAGE_SIZE_IN_LIMIT_CLAUSE", "INVALID_DURING_CLAUSE", "INVALID_MIN_DATE_IN_DURING_CLAUSE", "INVALID_MAX_DATE_IN_DURING_CLAUSE", "MAX_LESS_THAN_MIN_IN_DURING_CLAUSE", "VALIDATION_FAILED"]}, :"QuotaCheckError.Reason"=>{:type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"SelectorError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FIELD_NAME", "MISSING_FIELDS", "MISSING_PREDICATES", "OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES", "INVALID_PREDICATE_ENUM_VALUE", "MISSING_PREDICATE_OPERATOR", "MISSING_PREDICATE_VALUES", "INVALID_PREDICATE_FIELD_NAME", "INVALID_PREDICATE_OPERATOR", "INVALID_FIELD_SELECTION", "INVALID_PREDICATE_VALUE", "INVALID_SORT_FIELD_NAME", "SELECTOR_ERROR", "FILTER_BY_DATE_RANGE_NOT_SUPPORTED", "START_INDEX_IS_TOO_HIGH", "TOO_MANY_PREDICATE_VALUES", "UNKNOWN_ERROR"]}, :"SizeLimitError.Reason"=>{:type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}}
    BIDDINGSTRATEGYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return BIDDINGSTRATEGYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BIDDINGSTRATEGYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BIDDINGSTRATEGYSERVICE_NAMESPACES[index]
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
      super(exception_fault, BiddingStrategyServiceRegistry)
    end
  end
end; end; end
