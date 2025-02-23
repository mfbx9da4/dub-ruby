# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Security < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :token, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'bearer', 'field_name': 'Authorization' } }


      sig { params(token: T.nilable(::String)).void }
      def initialize(token: nil)
        @token = token
      end
    end
  end
end
