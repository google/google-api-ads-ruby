# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2014-10-29 15:59:18.

require 'ads_common/savon_service'
require 'dfp_api/v201411/product_service_registry'

module DfpApi; module V201411; module ProductService
  class ProductService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201411'
      super(config, endpoint, namespace, :v201411)
    end

    def get_products_by_statement(*args, &block)
      return execute_action('get_products_by_statement', args, &block)
    end

    def perform_product_action(*args, &block)
      return execute_action('perform_product_action', args, &block)
    end

    def update_products(*args, &block)
      return execute_action('update_products', args, &block)
    end

    private

    def get_service_registry()
      return ProductServiceRegistry
    end

    def get_module()
      return DfpApi::V201411::ProductService
    end
  end
end; end; end
