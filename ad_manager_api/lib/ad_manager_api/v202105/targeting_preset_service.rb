# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2021, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2021-05-07 00:49:19.

require 'ads_common/savon_service'
require 'ad_manager_api/v202105/targeting_preset_service_registry'

module AdManagerApi; module V202105; module TargetingPresetService
  class TargetingPresetService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202105'
      super(config, endpoint, namespace, :v202105)
    end

    def get_targeting_presets_by_statement(*args, &block)
      return execute_action('get_targeting_presets_by_statement', args, &block)
    end

    def get_targeting_presets_by_statement_to_xml(*args)
      return get_soap_xml('get_targeting_presets_by_statement', args)
    end

    private

    def get_service_registry()
      return TargetingPresetServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202105::TargetingPresetService
    end
  end
end; end; end