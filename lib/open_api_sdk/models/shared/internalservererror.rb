# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class InternalServerError < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :error, ::OpenApiSDK::Shared::InternalServerErrorError, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: ::OpenApiSDK::Shared::InternalServerErrorError).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
