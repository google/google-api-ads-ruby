# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.10.0 on 2015-08-13 11:28:08.

require 'ads_common/savon_service'
require 'dfp_api/v201508/label_service_registry'

module DfpApi; module V201508; module LabelService
  class LabelService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
    end

    def create_labels(*args, &block)
      return execute_action('create_labels', args, &block)
    end

    def get_labels_by_statement(*args, &block)
      return execute_action('get_labels_by_statement', args, &block)
    end

    def perform_label_action(*args, &block)
      return execute_action('perform_label_action', args, &block)
    end

    def update_labels(*args, &block)
      return execute_action('update_labels', args, &block)
    end

    private

    def get_service_registry()
      return LabelServiceRegistry
    end

    def get_module()
      return DfpApi::V201508::LabelService
    end
  end
end; end; end
