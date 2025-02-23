# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class BulkUpdateLinksRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :data, ::OpenApiSDK::Operations::Data, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('data') } }

      field :link_ids, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linkIds') } }


      sig { params(data: ::OpenApiSDK::Operations::Data, link_ids: T::Array[::String]).void }
      def initialize(data: nil, link_ids: nil)
        @data = data
        @link_ids = link_ids
      end
    end
  end
end
