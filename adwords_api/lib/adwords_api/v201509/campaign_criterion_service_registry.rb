# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.0 on 2015-10-08 10:50:18.

require 'adwords_api/errors'

module AdwordsApi; module V201509; module CampaignCriterionService
  class CampaignCriterionServiceRegistry
    CAMPAIGNCRITERIONSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignCriterionPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignCriterionOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignCriterionReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"CampaignCriterionPage", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNCRITERIONSERVICE_TYPES = {:AdSchedule=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Address=>{:fields=>[{:name=>:street_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:street_address2, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:province_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AdxError=>{:fields=>[{:name=>:reason, :type=>"AdxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AgeRange=>{:fields=>[{:name=>:age_range_type, :type=>"AgeRange.AgeRangeType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignCriterion=>{:fields=>[{:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negative, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion, :type=>"Criterion", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_modifier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:forward_compatibility_map, :type=>"String_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:campaign_criterion_type, :original_name=>"CampaignCriterion.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CampaignCriterionError=>{:fields=>[{:name=>:reason, :type=>"CampaignCriterionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CampaignCriterionOperation=>{:fields=>[{:name=>:operand, :type=>"CampaignCriterion", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignCriterionPage=>{:fields=>[{:name=>:entries, :type=>"CampaignCriterion", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignCriterionReturnValue=>{:fields=>[{:name=>:value, :type=>"CampaignCriterion", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :Carrier=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ConstantOperand=>{:fields=>[{:name=>:type, :type=>"ConstantOperand.ConstantType", :min_occurs=>0, :max_occurs=>1}, {:name=>:unit, :type=>"ConstantOperand.Unit", :min_occurs=>0, :max_occurs=>1}, {:name=>:long_value, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:boolean_value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:double_value, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:string_value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"FunctionArgumentOperand"}, :ContentLabel=>{:fields=>[{:name=>:content_label_type, :type=>"ContentLabelType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Criterion=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Criterion.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:criterion_type, :original_name=>"Criterion.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :CriterionError=>{:fields=>[{:name=>:reason, :type=>"CriterionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CriterionParameter=>{:fields=>[{:name=>:criterion_parameter_type, :original_name=>"CriterionParameter.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Function=>{:fields=>[{:name=>:operator, :type=>"Function.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:lhs_operand, :type=>"FunctionArgumentOperand", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:rhs_operand, :type=>"FunctionArgumentOperand", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:function_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :FunctionError=>{:fields=>[{:name=>:reason, :type=>"FunctionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Gender=>{:fields=>[{:name=>:gender_type, :type=>"Gender.GenderType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :GeoPoint=>{:fields=>[{:name=>:latitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:longitude_in_micro_degrees, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :GeoTargetOperand=>{:fields=>[{:name=>:locations, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"FunctionArgumentOperand"}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :IncomeOperand=>{:fields=>[{:name=>:tier, :type=>"IncomeTier", :min_occurs=>0, :max_occurs=>1}], :base=>"FunctionArgumentOperand"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :IpBlock=>{:fields=>[{:name=>:ip_address, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Keyword=>{:fields=>[{:name=>:text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:match_type, :type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Language=>{:fields=>[{:name=>:code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Location=>{:fields=>[{:name=>:location_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeting_status, :type=>"LocationTargetingStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:parent_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :LocationExtensionOperand=>{:fields=>[{:name=>:radius, :type=>"ConstantOperand", :min_occurs=>0, :max_occurs=>1}, {:name=>:location_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"FunctionArgumentOperand"}, :MobileAppCategory=>{:fields=>[{:name=>:mobile_app_category_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :MobileApplication=>{:fields=>[{:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :MobileDevice=>{:fields=>[{:name=>:device_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:manufacturer_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_type, :type=>"MobileDevice.DeviceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :NegativeCampaignCriterion=>{:fields=>[], :base=>"CampaignCriterion"}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FunctionArgumentOperand=>{:fields=>[{:name=>:function_argument_operand_type, :original_name=>"FunctionArgumentOperand.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperatingSystemVersion=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:os_major_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:os_minor_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator_type, :type=>"OperatingSystemVersion.OperatorType", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PagingError=>{:fields=>[{:name=>:reason, :type=>"PagingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Placement=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :PlacesOfInterestOperand=>{:fields=>[{:name=>:category, :type=>"PlacesOfInterestOperand.Category", :min_occurs=>0, :max_occurs=>1}], :base=>"FunctionArgumentOperand"}, :Platform=>{:fields=>[{:name=>:platform_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProductAdwordsGrouping=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductAdwordsLabels=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductBiddingCategory=>{:fields=>[{:name=>:type, :type=>"ProductDimensionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductBrand=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductCanonicalCondition=>{:fields=>[{:name=>:condition, :type=>"ProductCanonicalCondition.Condition", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductChannel=>{:fields=>[{:name=>:channel, :type=>"ShoppingProductChannel", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductChannelExclusivity=>{:fields=>[{:name=>:channel_exclusivity, :type=>"ShoppingProductChannelExclusivity", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductLegacyCondition=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductCustomAttribute=>{:fields=>[{:name=>:type, :type=>"ProductDimensionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductDimension=>{:fields=>[{:name=>:product_dimension_type, :original_name=>"ProductDimension.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ProductOfferId=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductScope=>{:fields=>[{:name=>:dimensions, :type=>"ProductDimension", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :ProductType=>{:fields=>[{:name=>:type, :type=>"ProductDimensionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :ProductTypeFull=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProductDimension"}, :Proximity=>{:fields=>[{:name=>:geo_point, :type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_distance_units, :type=>"Proximity.DistanceUnits", :min_occurs=>0, :max_occurs=>1}, {:name=>:radius_in_units, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:address, :type=>"Address", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RegionCodeError=>{:fields=>[{:name=>:reason, :type=>"RegionCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LocationGroups=>{:fields=>[{:name=>:feed_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:matching_function, :type=>"Function", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :UnknownProductDimension=>{:fields=>[], :base=>"ProductDimension"}, :CriterionUserInterest=>{:fields=>[{:name=>:user_interest_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_parent_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_interest_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :CriterionUserList=>{:fields=>[{:name=>:user_list_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_membership_status, :type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :Vertical=>{:fields=>[{:name=>:vertical_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:vertical_parent_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:path, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :Webpage=>{:fields=>[{:name=>:parameter, :type=>"WebpageParameter", :min_occurs=>0, :max_occurs=>1}, {:name=>:criteria_coverage, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:criteria_samples, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Criterion"}, :WebpageCondition=>{:fields=>[{:name=>:operand, :type=>"WebpageConditionOperand", :min_occurs=>0, :max_occurs=>1}, {:name=>:argument, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :WebpageParameter=>{:fields=>[{:name=>:criterion_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:conditions, :type=>"WebpageCondition", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CriterionParameter"}, :YouTubeChannel=>{:fields=>[{:name=>:channel_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:channel_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :YouTubeVideo=>{:fields=>[{:name=>:video_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Criterion"}, :"AdxError.Reason"=>{:fields=>[]}, :"AgeRange.AgeRangeType"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :"CampaignCriterionError.Reason"=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"ConstantOperand.ConstantType"=>{:fields=>[]}, :"ConstantOperand.Unit"=>{:fields=>[]}, :ContentLabelType=>{:fields=>[]}, :"Criterion.Type"=>{:fields=>[]}, :"CriterionError.Reason"=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"EntityCountLimitExceeded.Reason"=>{:fields=>[]}, :"EntityNotFound.Reason"=>{:fields=>[]}, :"Function.Operator"=>{:fields=>[]}, :"FunctionError.Reason"=>{:fields=>[]}, :"Gender.GenderType"=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :IncomeTier=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :KeywordMatchType=>{:fields=>[]}, :LocationTargetingStatus=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :"MobileDevice.DeviceType"=>{:fields=>[]}, :"NewEntityCreationError.Reason"=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OperatingSystemVersion.OperatorType"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"OperatorError.Reason"=>{:fields=>[]}, :"PagingError.Reason"=>{:fields=>[]}, :"PlacesOfInterestOperand.Category"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"ProductCanonicalCondition.Condition"=>{:fields=>[]}, :ProductDimensionType=>{:fields=>[]}, :"Proximity.DistanceUnits"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RegionCodeError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :ShoppingProductChannel=>{:fields=>[]}, :ShoppingProductChannelExclusivity=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"CriterionUserList.MembershipStatus"=>{:fields=>[]}, :WebpageConditionOperand=>{:fields=>[]}}
    CAMPAIGNCRITERIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNCRITERIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNCRITERIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNCRITERIONSERVICE_NAMESPACES[index]
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
      super(exception_fault, CampaignCriterionServiceRegistry)
    end
  end
end; end; end
