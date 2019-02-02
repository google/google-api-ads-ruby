# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-01-28 16:55:08.

require 'ads_common/savon_service'
require 'adwords_api/v201809/trial_async_error_service_registry'

module AdwordsApi; module V201809; module TrialAsyncErrorService
  class TrialAsyncErrorService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201809'
      super(config, endpoint, namespace, :v201809)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    def query_to_xml(*args)
      return get_soap_xml('query', args)
    end

    private

    def get_service_registry()
      return TrialAsyncErrorServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201809::TrialAsyncErrorService
    end
  end
end; end; end
