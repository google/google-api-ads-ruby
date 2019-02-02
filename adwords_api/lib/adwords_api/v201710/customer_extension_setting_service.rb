# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:04:30.

require 'ads_common/savon_service'
require 'adwords_api/v201710/customer_extension_setting_service_registry'

module AdwordsApi; module V201710; module CustomerExtensionSettingService
  class CustomerExtensionSettingService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201710'
      super(config, endpoint, namespace, :v201710)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    def query_to_xml(*args)
      return get_soap_xml('query', args)
    end

    private

    def get_service_registry()
      return CustomerExtensionSettingServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201710::CustomerExtensionSettingService
    end
  end
end; end; end
