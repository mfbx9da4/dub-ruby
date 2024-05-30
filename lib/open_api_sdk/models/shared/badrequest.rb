# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class BadRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :error, ::OpenApiSDK::Shared::Error, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: ::OpenApiSDK::Shared::Error).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
