# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:17:30.

require 'ads_common/savon_service'
require 'dfp_api/v201511/suggested_ad_unit_service_registry'

module DfpApi; module V201511; module SuggestedAdUnitService
  class SuggestedAdUnitService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201511'
      super(config, endpoint, namespace, :v201511)
    end

    def get_suggested_ad_units_by_statement(*args, &block)
      return execute_action('get_suggested_ad_units_by_statement', args, &block)
    end

    def get_suggested_ad_units_by_statement_to_xml(*args)
      return get_soap_xml('get_suggested_ad_units_by_statement', args)
    end

    def perform_suggested_ad_unit_action(*args, &block)
      return execute_action('perform_suggested_ad_unit_action', args, &block)
    end

    def perform_suggested_ad_unit_action_to_xml(*args)
      return get_soap_xml('perform_suggested_ad_unit_action', args)
    end

    private

    def get_service_registry()
      return SuggestedAdUnitServiceRegistry
    end

    def get_module()
      return DfpApi::V201511::SuggestedAdUnitService
    end
  end
end; end; end
