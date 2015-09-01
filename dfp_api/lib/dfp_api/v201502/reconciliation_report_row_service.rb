# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2015-02-11 12:50:51.

require 'ads_common/savon_service'
require 'dfp_api/v201502/reconciliation_report_row_service_registry'

module DfpApi; module V201502; module ReconciliationReportRowService
  class ReconciliationReportRowService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201502'
      super(config, endpoint, namespace, :v201502)
    end

    def get_reconciliation_report_rows_by_statement(*args, &block)
      return execute_action('get_reconciliation_report_rows_by_statement', args, &block)
    end

    def update_reconciliation_report_rows(*args, &block)
      return execute_action('update_reconciliation_report_rows', args, &block)
    end

    private

    def get_service_registry()
      return ReconciliationReportRowServiceRegistry
    end

    def get_module()
      return DfpApi::V201502::ReconciliationReportRowService
    end
  end
end; end; end
