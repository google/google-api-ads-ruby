#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.3.1 on 2011-06-10 21:50:43.

module DfpApi; module V201104; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationServiceRegistry
    LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS = {:get_line_item_creative_associations_by_statement=>{:output=>{:name=>"get_line_item_creative_associations_by_statement_response", :fields=>[{:type=>"LineItemCreativeAssociationPage", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}]}, :perform_line_item_creative_association_action=>{:output=>{:name=>"perform_line_item_creative_association_action_response", :fields=>[{:type=>"UpdateResult", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"LineItemCreativeAssociationAction", :max_occurs=>1, :name=>:line_item_creative_association_action, :min_occurs=>0}, {:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}]}, :update_line_item_creative_association=>{:output=>{:name=>"update_line_item_creative_association_response", :fields=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>1, :name=>:line_item_creative_association, :min_occurs=>0}]}, :create_line_item_creative_association=>{:output=>{:name=>"create_line_item_creative_association_response", :fields=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>1, :name=>:line_item_creative_association, :min_occurs=>0}]}, :update_line_item_creative_associations=>{:output=>{:name=>"update_line_item_creative_associations_response", :fields=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>nil, :name=>:line_item_creative_associations, :min_occurs=>0}]}, :create_line_item_creative_associations=>{:output=>{:name=>"create_line_item_creative_associations_response", :fields=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>nil, :name=>:line_item_creative_associations, :min_occurs=>0}]}, :get_line_item_creative_association=>{:output=>{:name=>"get_line_item_creative_association_response", :fields=>[{:type=>"LineItemCreativeAssociation", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"long", :max_occurs=>1, :name=>:line_item_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:creative_id, :min_occurs=>0}]}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES = {:TextValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :Stats=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:impressions_delivered, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:clicks_delivered, :min_occurs=>0}]}, :ActivateLineItemCreativeAssociations=>{:base=>"LineItemCreativeAssociationAction", :fields=>[]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}]}, :DeactivateLineItemCreativeAssociations=>{:base=>"LineItemCreativeAssociationAction", :fields=>[]}, :Statement=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:query, :min_occurs=>0}, {:type=>"String_ValueMapEntry", :max_occurs=>nil, :name=>:values, :min_occurs=>0}]}, :Money=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:currency_code, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:micro_amount, :min_occurs=>0}]}, :Value=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value_type, :min_occurs=>0}]}, :UpdateResult=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:num_changes, :min_occurs=>0}]}, :LineItemCreativeAssociationAction=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:line_item_creative_association_action_type, :min_occurs=>0}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:key, :min_occurs=>0}, {:type=>"Value", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :NumberValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :DateTime=>{:fields=>[{:type=>"Date", :max_occurs=>1, :name=>:date, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:hour, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:minute, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:second, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:time_zone_id, :min_occurs=>0}]}, :LineItemCreativeAssociation=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:line_item_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:creative_id, :min_occurs=>0}, {:type=>"double", :max_occurs=>1, :name=>:manual_creative_rotation_weight, :min_occurs=>0}, {:type=>"DateTime", :max_occurs=>1, :name=>:start_date_time, :min_occurs=>0}, {:type=>"StartDateTimeType", :max_occurs=>1, :name=>:start_date_time_type, :min_occurs=>0}, {:type=>"DateTime", :max_occurs=>1, :name=>:end_date_time, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:destination_url, :min_occurs=>0}, {:type=>"Size", :max_occurs=>nil, :name=>:sizes, :min_occurs=>0}, {:type=>"LineItemCreativeAssociation.Status", :max_occurs=>1, :name=>:status, :min_occurs=>0}, {:type=>"LineItemCreativeAssociationStats", :max_occurs=>1, :name=>:stats, :min_occurs=>0}]}, :Date=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:year, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:month, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:day, :min_occurs=>0}]}, :Authentication=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:authentication_type, :min_occurs=>0}]}, :LineItemCreativeAssociationPage=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:total_result_set_size, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:start_index, :min_occurs=>0}, {:type=>"LineItemCreativeAssociation", :max_occurs=>nil, :name=>:results, :min_occurs=>0}]}, :BooleanValue=>{:base=>"Value", :fields=>[{:type=>"boolean", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :Size=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:width, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:height, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:is_aspect_ratio, :min_occurs=>0}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:application_name, :min_occurs=>0}, {:type=>"Authentication", :max_occurs=>1, :name=>:authentication, :min_occurs=>0}]}, :OAuth=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:parameters, :min_occurs=>0}]}, :LineItemCreativeAssociationStats=>{:fields=>[{:type=>"Stats", :max_occurs=>1, :name=>:stats, :min_occurs=>0}, {:type=>"Money", :max_occurs=>1, :name=>:cost_in_order_currency, :min_occurs=>0}]}, :ClientLogin=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:token, :min_occurs=>0}]}}

    def self.get_method_signature(method_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES[type_name.to_sym]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields = [] if !defined?(@array_fields)
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
