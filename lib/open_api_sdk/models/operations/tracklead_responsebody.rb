# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # A lead was tracked.
    class TrackLeadResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :click_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('clickId') } }

      field :customer_avatar, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerAvatar') } }

      field :customer_email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerEmail') } }

      field :customer_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerId') } }

      field :customer_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('customerName') } }

      field :event_name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('eventName') } }

      field :metadata, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('metadata') } }


      sig { params(click_id: ::String, customer_avatar: ::String, customer_email: ::String, customer_id: ::String, customer_name: ::String, event_name: ::String, metadata: T.nilable(T::Hash[Symbol, ::Object])).void }
      def initialize(click_id: nil, customer_avatar: nil, customer_email: nil, customer_id: nil, customer_name: nil, event_name: nil, metadata: nil)
        @click_id = click_id
        @customer_avatar = customer_avatar
        @customer_email = customer_email
        @customer_id = customer_id
        @customer_name = customer_name
        @event_name = event_name
        @metadata = metadata
      end
    end
  end
end
