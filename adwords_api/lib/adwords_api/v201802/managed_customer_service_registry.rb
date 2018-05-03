# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:05:46.

require 'adwords_api/errors'

module AdwordsApi; module V201802; module ManagedCustomerService
  class ManagedCustomerServiceRegistry
    MANAGEDCUSTOMERSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_pending_invitations=>{:input=>[{:name=>:selector, :type=>"PendingInvitationSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_pending_invitations_response", :fields=>[{:name=>:rval, :type=>"PendingInvitation", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"ManagedCustomerOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_label=>{:input=>[{:name=>:operations, :type=>"ManagedCustomerLabelOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_label_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerLabelReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_link=>{:input=>[{:name=>:operations, :type=>"LinkOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_link_response", :fields=>[{:name=>:rval, :type=>"MutateLinkResults", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_manager=>{:input=>[{:name=>:operations, :type=>"MoveOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_manager_response", :fields=>[{:name=>:rval, :type=>"MutateManagerResults", :min_occurs=>0, :max_occurs=>1}]}}}
    MANAGEDCUSTOMERSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException", :ns=>0}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :"AuthenticationError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["AUTHENTICATION_FAILED", "CLIENT_CUSTOMER_ID_IS_REQUIRED", "CLIENT_EMAIL_REQUIRED", "CLIENT_CUSTOMER_ID_INVALID", "CLIENT_EMAIL_INVALID", "CLIENT_EMAIL_FAILED_TO_AUTHENTICATE", "CUSTOMER_NOT_FOUND", "GOOGLE_ACCOUNT_DELETED", "GOOGLE_ACCOUNT_COOKIE_INVALID", "FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT", "GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH", "LOGIN_COOKIE_REQUIRED", "NOT_ADS_USER", "OAUTH_TOKEN_INVALID", "OAUTH_TOKEN_EXPIRED", "OAUTH_TOKEN_DISABLED", "OAUTH_TOKEN_REVOKED", "OAUTH_TOKEN_HEADER_INVALID", "LOGIN_COOKIE_INVALID", "FAILED_TO_RETRIEVE_LOGIN_COOKIE", "USER_ID_INVALID"]}, :"AuthorizationError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNABLE_TO_AUTHORIZE", "NO_ADWORDS_ACCOUNT_FOR_CUSTOMER", "USER_PERMISSION_DENIED", "EFFECTIVE_USER_PERMISSION_DENIED", "CUSTOMER_NOT_ACTIVE", "USER_HAS_READONLY_PERMISSION", "NO_CUSTOMER_FOUND", "SERVICE_ACCESS_DENIED"]}, :"ClientTermsError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED"]}, :"DatabaseError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["CONCURRENT_MODIFICATION", "PERMISSION_DENIED", "ACCESS_PROHIBITED", "CAMPAIGN_PRODUCT_NOT_SUPPORTED", "DUPLICATE_KEY", "DATABASE_ERROR", "UNKNOWN"]}, :"DateError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INVALID_FIELD_VALUES_IN_DATE", "INVALID_FIELD_VALUES_IN_DATE_TIME", "INVALID_STRING_DATE", "INVALID_STRING_DATE_RANGE", "INVALID_STRING_DATE_TIME", "EARLIER_THAN_MINIMUM_DATE", "LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE", "DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL"]}, :"DistinctError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["DUPLICATE_ELEMENT", "DUPLICATE_TYPE"]}, :"IdError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["NOT_FOUND"]}, :"InternalApiError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotEmptyError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["EMPTY_LIST"]}, :"NullError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["NULL_CONTENT"]}, :"OperationAccessDenied.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["ACTION_NOT_PERMITTED", "ADD_OPERATION_NOT_PERMITTED", "REMOVE_OPERATION_NOT_PERMITTED", "SET_OPERATION_NOT_PERMITTED", "MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT", "OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE", "ADD_AS_REMOVED_NOT_PERMITTED", "OPERATION_NOT_PERMITTED_FOR_REMOVED_ENTITY", "OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE", "UNKNOWN"]}, :Operator=>{:ns=>0, :type=>"string", :enumerations=>["ADD", "REMOVE", "SET"]}, :"OperatorError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["OPERATOR_NOT_SUPPORTED"]}, :"Predicate.Operator"=>{:ns=>0, :type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS", "IN", "NOT_IN", "GREATER_THAN", "GREATER_THAN_EQUALS", "LESS_THAN", "LESS_THAN_EQUALS", "STARTS_WITH", "STARTS_WITH_IGNORE_CASE", "CONTAINS", "CONTAINS_IGNORE_CASE", "DOES_NOT_CONTAIN", "DOES_NOT_CONTAIN_IGNORE_CASE", "CONTAINS_ANY", "CONTAINS_ALL", "CONTAINS_NONE", "UNKNOWN"]}, :"QuotaCheckError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INVALID_TOKEN_HEADER", "ACCOUNT_DELINQUENT", "ACCOUNT_INACCESSIBLE", "ACCOUNT_INACTIVE", "INCOMPLETE_SIGNUP", "DEVELOPER_TOKEN_NOT_APPROVED", "TERMS_AND_CONDITIONS_NOT_SIGNED", "MONTHLY_BUDGET_REACHED", "QUOTA_EXCEEDED"]}, :"RangeError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["TOO_LOW", "TOO_HIGH"]}, :"RateExceededError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["RATE_EXCEEDED"]}, :"ReadOnlyError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["READ_ONLY"]}, :"RejectedError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN_VALUE"]}, :"RequestError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN", "INVALID_INPUT", "UNSUPPORTED_VERSION"]}, :"RequiredError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["REQUIRED"]}, :"SelectorError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["INVALID_FIELD_NAME", "MISSING_FIELDS", "MISSING_PREDICATES", "OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES", "INVALID_PREDICATE_ENUM_VALUE", "MISSING_PREDICATE_OPERATOR", "MISSING_PREDICATE_VALUES", "INVALID_PREDICATE_FIELD_NAME", "INVALID_PREDICATE_OPERATOR", "INVALID_FIELD_SELECTION", "INVALID_PREDICATE_VALUE", "INVALID_SORT_FIELD_NAME", "SELECTOR_ERROR", "FILTER_BY_DATE_RANGE_NOT_SUPPORTED", "START_INDEX_IS_TOO_HIGH", "TOO_MANY_PREDICATE_VALUES", "UNKNOWN_ERROR"]}, :"SizeLimitError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["REQUEST_SIZE_LIMIT_EXCEEDED", "RESPONSE_SIZE_LIMIT_EXCEEDED", "INTERNAL_STORAGE_ERROR", "UNKNOWN"]}, :SortOrder=>{:ns=>0, :type=>"string", :enumerations=>["ASCENDING", "DESCENDING"]}, :"StringFormatError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:ns=>0, :type=>"string", :enumerations=>["TOO_SHORT", "TOO_LONG"]}, :AccountLabel=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerLink=>{:fields=>[{:name=>:manager_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:link_status, :type=>"LinkStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:pending_descriptive_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_hidden, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :LinkOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomer=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_manage_clients, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:test_account, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_labels, :type=>"AccountLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:exclude_hidden_accounts, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerLabelOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLabel", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomerLabelReturnValue=>{:fields=>[{:name=>:value, :type=>"ManagedCustomerLabel", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ManagedCustomerOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}, {:name=>:invitee_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:invitee_role, :type=>"AccessRole", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomerPage=>{:fields=>[{:name=>:entries, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :ManagedCustomerReturnValue=>{:fields=>[{:name=>:value, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ManagedCustomerServiceError=>{:fields=>[{:name=>:reason, :type=>"ManagedCustomerServiceError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApiError"}, :MoveOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>1}, {:name=>:old_manager_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :MutateLinkResults=>{:fields=>[{:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MutateManagerResults=>{:fields=>[{:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PendingInvitation=>{:fields=>[{:name=>:manager, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}, {:name=>:client, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:expiration_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PendingInvitationSelector=>{:fields=>[{:name=>:manager_customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:client_customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AccessRole=>{:type=>"string", :enumerations=>["ADMINISTRATIVE", "STANDARD", "READ_ONLY"]}, :LinkStatus=>{:type=>"string", :enumerations=>["ACTIVE", "INACTIVE", "PENDING", "REFUSED", "CANCELLED", "UNKNOWN"]}, :"ManagedCustomerServiceError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "NOT_AUTHORIZED", "INVALID_SELECTOR", "INVALID_TIMEZONE", "INVALID_CURRENCY", "INVALID_DESCRIPTIVE_NAME", "ADD_CUSTOMER_FAILURE", "SAVE_CUSTOMERS_FAILURE", "ALREADY_MANAGED_BY_THIS_MANAGER", "ALREADY_INVITED_BY_THIS_MANAGER", "ALREADY_MANAGED_IN_HIERARCHY", "ALREADY_MANAGED_FOR_UI_ACCESS", "MAX_LINK_DEPTH_EXCEEDED", "NO_PENDING_INVITATION", "TOO_MANY_ACCOUNTS", "TOO_MANY_ACCOUNTS_AT_MANAGER", "TOO_MANY_UI_API_MANAGERS", "TEST_ACCOUNT_LINK_ERROR", "INVALID_LABEL_ID", "CANNOT_APPLY_INACTIVE_LABEL", "APPLIED_LABEL_TO_TOO_MANY_ACCOUNTS"]}}
    MANAGEDCUSTOMERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201802"]

    def self.get_method_signature(method_name)
      return MANAGEDCUSTOMERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return MANAGEDCUSTOMERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return MANAGEDCUSTOMERSERVICE_NAMESPACES[index]
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
      super(exception_fault, ManagedCustomerServiceRegistry)
    end
  end
end; end; end
