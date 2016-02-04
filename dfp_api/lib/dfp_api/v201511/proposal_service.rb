# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:17:22.

require 'ads_common/savon_service'
require 'dfp_api/v201511/proposal_service_registry'

module DfpApi; module V201511; module ProposalService
  class ProposalService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201511'
      super(config, endpoint, namespace, :v201511)
    end

    def create_proposals(*args, &block)
      return execute_action('create_proposals', args, &block)
    end

    def create_proposals_to_xml(*args)
      return get_soap_xml('create_proposals', args)
    end

    def get_proposals_by_statement(*args, &block)
      return execute_action('get_proposals_by_statement', args, &block)
    end

    def get_proposals_by_statement_to_xml(*args)
      return get_soap_xml('get_proposals_by_statement', args)
    end

    def perform_proposal_action(*args, &block)
      return execute_action('perform_proposal_action', args, &block)
    end

    def perform_proposal_action_to_xml(*args)
      return get_soap_xml('perform_proposal_action', args)
    end

    def update_proposals(*args, &block)
      return execute_action('update_proposals', args, &block)
    end

    def update_proposals_to_xml(*args)
      return get_soap_xml('update_proposals', args)
    end

    private

    def get_service_registry()
      return ProposalServiceRegistry
    end

    def get_module()
      return DfpApi::V201511::ProposalService
    end
  end
end; end; end
