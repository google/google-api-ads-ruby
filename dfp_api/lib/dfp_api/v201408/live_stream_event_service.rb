# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-08-12 14:23:42.

require 'ads_common/savon_service'
require 'dfp_api/v201408/live_stream_event_service_registry'

module DfpApi; module V201408; module LiveStreamEventService
  class LiveStreamEventService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201408'
      super(config, endpoint, namespace, :v201408)
    end

    def create_live_stream_events(*args, &block)
      return execute_action('create_live_stream_events', args, &block)
    end

    def get_live_stream_events_by_statement(*args, &block)
      return execute_action('get_live_stream_events_by_statement', args, &block)
    end

    def perform_live_stream_event_action(*args, &block)
      return execute_action('perform_live_stream_event_action', args, &block)
    end

    def update_live_stream_events(*args, &block)
      return execute_action('update_live_stream_events', args, &block)
    end

    private

    def get_service_registry()
      return LiveStreamEventServiceRegistry
    end

    def get_module()
      return DfpApi::V201408::LiveStreamEventService
    end
  end
end; end; end
