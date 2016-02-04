# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:16:46.

require 'ads_common/savon_service'
require 'dfp_api/v201511/company_service_registry'

module DfpApi; module V201511; module CompanyService
  class CompanyService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201511'
      super(config, endpoint, namespace, :v201511)
    end

    def create_companies(*args, &block)
      return execute_action('create_companies', args, &block)
    end

    def create_companies_to_xml(*args)
      return get_soap_xml('create_companies', args)
    end

    def get_companies_by_statement(*args, &block)
      return execute_action('get_companies_by_statement', args, &block)
    end

    def get_companies_by_statement_to_xml(*args)
      return get_soap_xml('get_companies_by_statement', args)
    end

    def update_companies(*args, &block)
      return execute_action('update_companies', args, &block)
    end

    def update_companies_to_xml(*args)
      return get_soap_xml('update_companies', args)
    end

    private

    def get_service_registry()
      return CompanyServiceRegistry
    end

    def get_module()
      return DfpApi::V201511::CompanyService
    end
  end
end; end; end
