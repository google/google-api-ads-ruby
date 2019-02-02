# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-08 12:04:52.

require 'ads_common/savon_service'
require 'adwords_api/v201710/traffic_estimator_service_registry'

module AdwordsApi; module V201710; module TrafficEstimatorService
  class TrafficEstimatorService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/o/v201710'
      super(config, endpoint, namespace, :v201710)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    private

    def get_service_registry()
      return TrafficEstimatorServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201710::TrafficEstimatorService
    end
  end
end; end; end
