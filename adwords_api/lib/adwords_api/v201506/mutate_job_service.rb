# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.0 on 2015-10-08 10:49:49.

require 'ads_common/savon_service'
require 'adwords_api/v201506/mutate_job_service_registry'

module AdwordsApi; module V201506; module MutateJobService
  class MutateJobService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201506'
      super(config, endpoint, namespace, :v201506)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def get_result(*args, &block)
      return execute_action('get_result', args, &block)
    end

    def get_result_to_xml(*args)
      return get_soap_xml('get_result', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return MutateJobServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201506::MutateJobService
    end
  end
end; end; end
