# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:05:49.

require 'ads_common/savon_service'
require 'adwords_api/v201802/offline_call_conversion_feed_service_registry'

module AdwordsApi; module V201802; module OfflineCallConversionFeedService
  class OfflineCallConversionFeedService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201802'
      super(config, endpoint, namespace, :v201802)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return OfflineCallConversionFeedServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201802::OfflineCallConversionFeedService
    end
  end
end; end; end
