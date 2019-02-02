# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-01-28 16:55:04.

require 'ads_common/savon_service'
require 'adwords_api/v201809/offline_conversion_feed_service_registry'

module AdwordsApi; module V201809; module OfflineConversionFeedService
  class OfflineConversionFeedService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201809'
      super(config, endpoint, namespace, :v201809)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return OfflineConversionFeedServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201809::OfflineConversionFeedService
    end
  end
end; end; end
