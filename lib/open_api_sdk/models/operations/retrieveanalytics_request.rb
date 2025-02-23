# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RetrieveAnalyticsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The browser to retrieve analytics for.
      field :browser, T.nilable(::String), { 'query_param': { 'field_name': 'browser', 'style': 'form', 'explode': true } }
      # The city to retrieve analytics for.
      field :city, T.nilable(::String), { 'query_param': { 'field_name': 'city', 'style': 'form', 'explode': true } }
      # The country to retrieve analytics for.
      field :country, T.nilable(::OpenApiSDK::Shared::CountryCode), { 'query_param': { 'field_name': 'country', 'style': 'form', 'explode': true } }
      # The device to retrieve analytics for.
      field :device, T.nilable(::String), { 'query_param': { 'field_name': 'device', 'style': 'form', 'explode': true } }
      # The domain to filter analytics for.
      field :domain, T.nilable(::String), { 'query_param': { 'field_name': 'domain', 'style': 'form', 'explode': true } }
      # The end date and time when to retrieve analytics from. If not provided, defaults to the current date.
      field :end_, T.nilable(::String), { 'query_param': { 'field_name': 'end', 'style': 'form', 'explode': true } }
      # The type of event to retrieve analytics for. Defaults to 'clicks'.
      field :event, T.nilable(::OpenApiSDK::Operations::Event), { 'query_param': { 'field_name': 'event', 'style': 'form', 'explode': true } }
      # This is the ID of the link in the your database. Must be prefixed with 'ext_' when passed as a query parameter.
      field :external_id, T.nilable(::String), { 'query_param': { 'field_name': 'externalId', 'style': 'form', 'explode': true } }
      # The parameter to group the analytics data points by. Defaults to 'count' if undefined.
      field :group_by, T.nilable(::OpenApiSDK::Operations::GroupBy), { 'query_param': { 'field_name': 'groupBy', 'style': 'form', 'explode': true } }
      # The interval to retrieve analytics for. Takes precedence over start and end. If undefined, defaults to 24h.
      field :interval, T.nilable(::OpenApiSDK::Operations::Interval), { 'query_param': { 'field_name': 'interval', 'style': 'form', 'explode': true } }
      # The short link slug.
      field :key, T.nilable(::String), { 'query_param': { 'field_name': 'key', 'style': 'form', 'explode': true } }
      # The unique ID of the short link on Dub.
      field :link_id, T.nilable(::String), { 'query_param': { 'field_name': 'linkId', 'style': 'form', 'explode': true } }
      # The OS to retrieve analytics for.
      field :os, T.nilable(::String), { 'query_param': { 'field_name': 'os', 'style': 'form', 'explode': true } }
      # Filter for QR code scans. If true, filter for QR codes only. If false, filter for links only. If undefined, return both.
      field :qr, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'qr', 'style': 'form', 'explode': true } }
      # The referer to retrieve analytics for.
      field :referer, T.nilable(::String), { 'query_param': { 'field_name': 'referer', 'style': 'form', 'explode': true } }
      # Filter for root domains. If true, filter for domains only. If false, filter for links only. If undefined, return both.
      field :root, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'root', 'style': 'form', 'explode': true } }
      # The start date and time when to retrieve analytics from.
      field :start, T.nilable(::String), { 'query_param': { 'field_name': 'start', 'style': 'form', 'explode': true } }
      # The tag ID to retrieve analytics for.
      field :tag_id, T.nilable(::String), { 'query_param': { 'field_name': 'tagId', 'style': 'form', 'explode': true } }
      # The IANA time zone code for aligning timeseries granularity (e.g. America/New_York). Defaults to UTC.
      field :timezone, T.nilable(::String), { 'query_param': { 'field_name': 'timezone', 'style': 'form', 'explode': true } }
      # The URL to retrieve analytics for.
      field :url, T.nilable(::String), { 'query_param': { 'field_name': 'url', 'style': 'form', 'explode': true } }
      # The ID of the workspace.
      field :workspace_id, T.nilable(::String), { 'query_param': { 'field_name': 'workspaceId', 'style': 'form', 'explode': true } }


      sig { params(browser: T.nilable(::String), city: T.nilable(::String), country: T.nilable(::OpenApiSDK::Shared::CountryCode), device: T.nilable(::String), domain: T.nilable(::String), end_: T.nilable(::String), event: T.nilable(::OpenApiSDK::Operations::Event), external_id: T.nilable(::String), group_by: T.nilable(::OpenApiSDK::Operations::GroupBy), interval: T.nilable(::OpenApiSDK::Operations::Interval), key: T.nilable(::String), link_id: T.nilable(::String), os: T.nilable(::String), qr: T.nilable(T::Boolean), referer: T.nilable(::String), root: T.nilable(T::Boolean), start: T.nilable(::String), tag_id: T.nilable(::String), timezone: T.nilable(::String), url: T.nilable(::String), workspace_id: T.nilable(::String)).void }
      def initialize(browser: nil, city: nil, country: nil, device: nil, domain: nil, end_: nil, event: nil, external_id: nil, group_by: nil, interval: nil, key: nil, link_id: nil, os: nil, qr: nil, referer: nil, root: nil, start: nil, tag_id: nil, timezone: nil, url: nil, workspace_id: nil)
        @browser = browser
        @city = city
        @country = country
        @device = device
        @domain = domain
        @end_ = end_
        @event = event
        @external_id = external_id
        @group_by = group_by
        @interval = interval
        @key = key
        @link_id = link_id
        @os = os
        @qr = qr
        @referer = referer
        @root = root
        @start = start
        @tag_id = tag_id
        @timezone = timezone
        @url = url
        @workspace_id = workspace_id
      end
    end
  end
end
